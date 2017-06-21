.class Lcom/vkcoffee/android/fragments/AudioListFragment$16;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment;->getAndShowCover(IILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

.field private final synthetic val$aid:I

.field private final synthetic val$iv:Landroid/widget/ImageView;

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment;IILandroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->this$0:Lcom/vkcoffee/android/fragments/AudioListFragment;

    iput p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$oid:I

    iput p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$aid:I

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$iv:Landroid/widget/ImageView;

    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1268
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "_oid"    # I
    .param p3, "_aid"    # I

    .prologue
    .line 1259
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GET COVER OK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$iv:Landroid/widget/ImageView;

    new-instance v1, Lcom/vkcoffee/android/fragments/AudioListFragment$16$1;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$16;->val$iv:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/AudioListFragment$16$1;-><init>(Lcom/vkcoffee/android/fragments/AudioListFragment$16;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1265
    return-void
.end method
