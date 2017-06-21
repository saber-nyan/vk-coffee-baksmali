.class Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;
.super Ljava/lang/Object;
.source "ManagerEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;)Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->access$1(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 151
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/ManagerEditFragment$2;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 160
    :cond_0
    return-void
.end method
