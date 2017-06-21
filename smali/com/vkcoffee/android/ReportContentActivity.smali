.class public Lcom/vkcoffee/android/ReportContentActivity;
.super Landroid/app/Activity;
.source "ReportContentActivity.java"


# static fields
.field private static final typeMap:[I


# instance fields
.field private logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/ReportContentActivity;->typeMap:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x6
        0x5
        0x4
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    return-void
.end method

.method private sendReport(I)V
    .locals 5
    .param p1, "type"    # I

    .prologue
    const/4 v4, 0x0

    .line 37
    new-instance v0, Lcom/vkcoffee/android/api/execute/ContentReport;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "ownerID"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "itemID"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/vkcoffee/android/ReportContentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/vkcoffee/android/api/execute/ContentReport;-><init>(IILjava/lang/String;I)V

    new-instance v1, Lcom/vkcoffee/android/ReportContentActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/ReportContentActivity$1;-><init>(Lcom/vkcoffee/android/ReportContentActivity;Landroid/content/Context;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/execute/ContentReport;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 52
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 53
    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 54
    return-void
.end method


# virtual methods
.method synthetic lambda$onCreate$658(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/vkcoffee/android/ReportContentActivity;->typeMap:[I

    aget v0, v0, p2

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/ReportContentActivity;->sendReport(I)V

    return-void
.end method

.method synthetic lambda$onCreate$659(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/vkcoffee/android/ReportContentActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-static {p0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->register(Landroid/app/Activity;)Lcom/vkcoffee/android/activities/LogoutReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    .line 23
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080435

    .line 24
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0035

    invoke-static {p0}, Lcom/vkcoffee/android/ReportContentActivity$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/ReportContentActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/vkcoffee/android/ReportContentActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/ReportContentActivity;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vkcoffee/android/ReportContentActivity;->logoutReceiver:Lcom/vkcoffee/android/activities/LogoutReceiver;

    invoke-virtual {v0}, Lcom/vkcoffee/android/activities/LogoutReceiver;->unregister()V

    .line 33
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 34
    return-void
.end method
