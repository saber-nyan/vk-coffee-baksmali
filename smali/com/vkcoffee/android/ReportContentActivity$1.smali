.class Lcom/vkcoffee/android/ReportContentActivity$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "ReportContentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ReportContentActivity;->sendReport(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ReportContentActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ReportContentActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ReportContentActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 49
    iget-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ReportContentActivity;->finish()V

    .line 50
    return-void
.end method

.method public success()V
    .locals 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    const v1, 0x7f080436

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 42
    iget-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ReportContentActivity;->setResult(ILandroid/content/Intent;)V

    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity$1;->this$0:Lcom/vkcoffee/android/ReportContentActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ReportContentActivity;->finish()V

    .line 44
    return-void
.end method
