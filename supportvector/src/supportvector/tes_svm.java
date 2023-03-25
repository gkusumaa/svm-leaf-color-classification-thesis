/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package supportvector;

import weka.classifiers.Evaluation;
import weka.classifiers.functions.SMO;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.converters.ConverterUtils;

/**
 *
 * @author geakusuma
 */
public class tes_svm {
    public static void main(String[] args) throws Exception {
        
        //import file .arff sebagai data source            
        ConverterUtils.DataSource source = new ConverterUtils.DataSource("C:\\Users\\Samsung\\Documents\\NetBeansProjects\\supportvector\\src\\supportvector\\datatrain.arff");
        Instances traindata = source.getDataSet();
        traindata.setClassIndex(traindata.numAttributes()-1);
        
        //menampilkan data train
        //int numClasses = traindata.numClasses();
        //for (int i=0; i<numClasses; i++){
        //    String classvalue = traindata.classAttribute().value(i);
        //    System.out.println("Class Value "+i+" is "+classvalue);
        //    System.out.println("RBG: "+traindata.toString());
        //}
        SMO svm = new SMO();
        svm.buildClassifier(traindata);
        
        Evaluation eval = new Evaluation(traindata);
        
        ConverterUtils.DataSource source1 = new ConverterUtils.DataSource("C:\\Users\\Samsung\\Documents\\NetBeansProjects\\supportvector\\src\\supportvector\\datates.arff");
        Instances tesdata = source1.getDataSet();
        
        tesdata.setClassIndex(tesdata.numAttributes()-1);
        eval.evaluateModel(svm, tesdata);
        //svm.buildClassifier(tesdata);
        
        //System.out.println(eval.toSummaryString("Evaluation result: \n",false));
        System.out.println("===========================");
        System.out.println("Actual class, SMO Predicted");
        for (int i=0; i<tesdata.numInstances(); i++){
            double actualclass = tesdata.instance(i).classValue();
            String actual = tesdata.classAttribute().value((int)actualclass);
            
            Instance newInst = tesdata.instance(i);
            
            double predSM = svm.classifyInstance(newInst);
            String predString = tesdata.classAttribute().value((int)predSM);
            //System.out.println(actualclass+" , "+predSM+" , "+actual+" , "+predString);
            System.out.println(actual+" , "+predString);
        }
        //System.out.println(svm);
        //System.out.println(svm.getCapabilities().toString());
        //System.out.println(traindata.toSummaryString());
        System.out.println("DONE.");
        
        
        System.out.println(eval.toSummaryString());
//        System.out.println("correct %: "+eval.pctCorrect());
//        System.out.println("incorect %: "+eval.incorrect());
//        System.out.println("AUC: "+eval.areaUnderROC(1));
//        System.out.println("Kappa: "+eval.kappa());
//        System.out.println("Mae: "+eval.meanAbsoluteError());
//        System.out.println("RMSE: "+eval.rootMeanSquaredError());
//        System.out.println("Rae: "+eval.relativeAbsoluteError());
//        System.out.println("RRSE: "+eval.rootRelativeSquaredError());
//        System.out.println("Precision: "+eval.precision(1));
//        System.out.println("fMeasure: "+eval.fMeasure(1));
//        System.out.println("Error Rate:"+eval.errorRate());
//        System.out.println(eval.toMatrixString("=== Overall confusion Matrix ==="));
//        
        
    }   
}
