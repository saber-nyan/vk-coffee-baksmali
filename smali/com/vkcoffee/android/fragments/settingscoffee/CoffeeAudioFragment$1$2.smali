.class Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$2;
.super Ljava/lang/Object;
.source "CoffeeAudioFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-static {v1}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-static {v1}, Lcom/vkcoffee/android/DirSelect;->getCustomState(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1$2;->this$1:Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;->access$0(Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment$1;)Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/settingscoffee/CoffeeAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->callRestart(Landroid/app/Activity;)V

    .line 86
    return-void
.end method
