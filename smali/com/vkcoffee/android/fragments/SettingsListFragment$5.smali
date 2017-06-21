.class Lcom/vkcoffee/android/fragments/SettingsListFragment$5;
.super Ljava/lang/Thread;
.source "SettingsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;->lambda$confirmLogout$603(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

.field private final synthetic val$dlg:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;->val$dlg:Landroid/app/ProgressDialog;

    .line 384
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 387
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 389
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$5;->val$dlg:Landroid/app/ProgressDialog;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment$SettingsListFragment$4$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 390
    return-void
.end method
