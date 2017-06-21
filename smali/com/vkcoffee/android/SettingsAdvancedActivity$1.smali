.class Lcom/vkcoffee/android/SettingsAdvancedActivity$1;
.super Ljava/lang/Object;
.source "SettingsAdvancedActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/ProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/SettingsAdvancedActivity;->moveAudioCache(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/SettingsAdvancedActivity;

.field final synthetic val$pdlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/SettingsAdvancedActivity;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/SettingsAdvancedActivity;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->this$0:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onProgressUpdated$691(Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    return-void
.end method

.method static synthetic lambda$onSetMaxValue$692(Landroid/app/ProgressDialog;I)V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 245
    return-void
.end method

.method public onProgressUpdated(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->this$0:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/SettingsAdvancedActivity$1$$Lambda$1;->lambdaFactory$(Landroid/app/ProgressDialog;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public onSetMaxValue(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->this$0:Lcom/vkcoffee/android/SettingsAdvancedActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/SettingsAdvancedActivity$1;->val$pdlg:Landroid/app/ProgressDialog;

    invoke-static {v1, p1}, Lcom/vkcoffee/android/SettingsAdvancedActivity$1$$Lambda$2;->lambdaFactory$(Landroid/app/ProgressDialog;I)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/SettingsAdvancedActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 240
    return-void
.end method
