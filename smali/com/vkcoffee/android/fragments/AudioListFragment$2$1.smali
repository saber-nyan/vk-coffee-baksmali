.class Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$2;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;)Lcom/vkcoffee/android/fragments/AudioListFragment$2;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$2;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 202
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "oid"    # I
    .param p3, "aid"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;->this$1:Lcom/vkcoffee/android/fragments/AudioListFragment$2;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment$2;->access$0(Lcom/vkcoffee/android/fragments/AudioListFragment$2;)Lcom/vkcoffee/android/fragments/AudioListFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/AudioListFragment;->access$2(Lcom/vkcoffee/android/fragments/AudioListFragment;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method
