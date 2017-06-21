.class Lcom/vkcoffee/android/DebugPrefsActivity$5;
.super Ljava/lang/Object;
.source "DebugPrefsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/DebugPrefsActivity;->doDownloadAudio(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

.field final synthetic val$currentFile:[Lcom/vkcoffee/android/AudioFile;

.field final synthetic val$dlg:Landroid/app/ProgressDialog;

.field final synthetic val$percent:[I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/DebugPrefsActivity;[Lcom/vkcoffee/android/AudioFile;Landroid/app/ProgressDialog;[I)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/DebugPrefsActivity;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$currentFile:[Lcom/vkcoffee/android/AudioFile;

    iput-object p3, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$dlg:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$percent:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 359
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$currentFile:[Lcom/vkcoffee/android/AudioFile;

    aget-object v0, v0, v3

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$dlg:Landroid/app/ProgressDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u0421\u043a\u0430\u0447\u0438\u0432\u0430\u0435\u0442\u0441\u044f...\n!! \u041d\u0415 \u0421\u0412\u041e\u0420\u0410\u0427\u0418\u0412\u0410\u0419\u0422\u0415 \u041f\u0420\u0418\u041b\u041e\u0416\u0415\u041d\u0418\u0415 !!\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$currentFile:[Lcom/vkcoffee/android/AudioFile;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$currentFile:[Lcom/vkcoffee/android/AudioFile;

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$percent:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->val$dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/DebugPrefsActivity$5;->this$0:Lcom/vkcoffee/android/DebugPrefsActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/DebugPrefsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :cond_1
    return-void
.end method
