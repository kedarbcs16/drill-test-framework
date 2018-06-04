0	SYSTEM ERROR: NullPointerException

Fragment 3:0

[Error Id: a5789451-48b7-40a6-b52e-820a5f354c04 on 10.10.30.169:31010]

  (java.lang.NullPointerException) null
    com.google.common.base.Preconditions.checkNotNull():210
    org.apache.drill.exec.physical.impl.unnest.UnnestRecordBatch.innerNext():172
    org.apache.drill.exec.record.AbstractRecordBatch.next():172
    org.apache.drill.exec.record.AbstractRecordBatch.next():119
    org.apache.drill.exec.record.AbstractRecordBatch.next():109
    org.apache.drill.exec.record.AbstractUnaryRecordBatch.innerNext():63
    org.apache.drill.exec.physical.impl.project.ProjectRecordBatch.innerNext():137
    org.apache.drill.exec.record.AbstractRecordBatch.next():172
    org.apache.drill.exec.record.AbstractRecordBatch.next():119
    org.apache.drill.exec.record.AbstractRecordBatch.next():109
    org.apache.drill.exec.record.AbstractUnaryRecordBatch.innerNext():63
    org.apache.drill.exec.record.AbstractRecordBatch.next():172
    org.apache.drill.exec.record.AbstractRecordBatch.next():119
    org.apache.drill.exec.record.AbstractRecordBatch.next():109
    org.apache.drill.exec.record.AbstractUnaryRecordBatch.innerNext():63
    org.apache.drill.exec.record.AbstractRecordBatch.next():172
    org.apache.drill.exec.physical.impl.BaseRootExec.next():103
    org.apache.drill.exec.physical.impl.SingleSenderCreator$SingleSenderRootExec.innerNext():93
    org.apache.drill.exec.physical.impl.BaseRootExec.next():93
    org.apache.drill.exec.work.fragment.FragmentExecutor$1.run():292
    org.apache.drill.exec.work.fragment.FragmentExecutor$1.run():279
    java.security.AccessController.doPrivileged():-2
    javax.security.auth.Subject.doAs():422
    org.apache.hadoop.security.UserGroupInformation.doAs():1595
    org.apache.drill.exec.work.fragment.FragmentExecutor.run():279
    org.apache.drill.common.SelfCleaningRunnable.run():38
    java.util.concurrent.ThreadPoolExecutor.runWorker():1149
    java.util.concurrent.ThreadPoolExecutor$Worker.run():624
    java.lang.Thread.run():748
