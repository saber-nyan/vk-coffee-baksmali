.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment;->setRelationPartner(Lcom/vkcoffee/android/UserProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;)Lcom/vkcoffee/android/fragments/ProfileEditFragment;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 463
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$29(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Lcom/vkcoffee/android/UserProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 464
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->this$0:Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;-><init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 469
    return-void
.end method
