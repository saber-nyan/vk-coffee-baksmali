.class Lorg/acra/ErrorReporter$5;
.super Ljava/lang/Thread;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/acra/ErrorReporter;

.field final synthetic val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

.field final synthetic val$reportFileName:Ljava/lang/String;

.field final synthetic val$showDirectDialog:Z

.field final synthetic val$worker:Lorg/acra/SendWorker;


# direct methods
.method constructor <init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iput-object p2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    iput-boolean p3, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    iput-object p4, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iput-object p5, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 821
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Waiting for Toast"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_0
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v2}, Lorg/acra/ErrorReporter;->access$1100(Lorg/acra/ErrorReporter;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 824
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 825
    :catch_0
    move-exception v1

    .line 826
    .local v1, "e1":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error : "

    invoke-interface {v2, v3, v4, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 829
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_0
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Finished waiting for Toast"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    if-eqz v2, :cond_2

    .line 833
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Waiting for Worker"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :goto_1
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$worker:Lorg/acra/SendWorker;

    invoke-virtual {v2}, Lorg/acra/SendWorker;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    const-wide/16 v2, 0x64

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 837
    :catch_1
    move-exception v1

    .line 838
    .restart local v1    # "e1":Ljava/lang/InterruptedException;
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Error : "

    invoke-interface {v2, v3, v4, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 841
    .end local v1    # "e1":Ljava/lang/InterruptedException;
    :cond_1
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "Finished waiting for Worker"

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_2
    iget-boolean v2, p0, Lorg/acra/ErrorReporter$5;->val$showDirectDialog:Z

    if-eqz v2, :cond_3

    .line 848
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Creating CrashReportDialog for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v3, p0, Lorg/acra/ErrorReporter$5;->val$reportFileName:Ljava/lang/String;

    iget-object v4, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2, v3, v4}, Lorg/acra/ErrorReporter;->access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    .line 850
    .local v0, "dialogIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 851
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    invoke-static {v2}, Lorg/acra/ErrorReporter;->access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 854
    .end local v0    # "dialogIntent":Landroid/content/Intent;
    :cond_3
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Wait for Toast + worker ended. Kill Application ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v5}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 857
    iget-object v2, p0, Lorg/acra/ErrorReporter$5;->this$0:Lorg/acra/ErrorReporter;

    iget-object v3, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v3}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter$5;->val$reportBuilder:Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-static {v4}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lorg/acra/ErrorReporter;->access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 859
    :cond_4
    return-void
.end method
