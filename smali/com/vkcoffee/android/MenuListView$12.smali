.class Lcom/vkcoffee/android/MenuListView$12;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Lcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView;->getAndShowCover(IILandroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/MenuListView;

.field private final synthetic val$aid:I

.field private final synthetic val$iv:Landroid/widget/ImageView;

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView;Landroid/widget/ImageView;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$12;->this$0:Lcom/vkcoffee/android/MenuListView;

    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView$12;->val$iv:Landroid/widget/ImageView;

    iput p3, p0, Lcom/vkcoffee/android/MenuListView$12;->val$aid:I

    iput p4, p0, Lcom/vkcoffee/android/MenuListView$12;->val$oid:I

    .line 1592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/MenuListView$12;)Lcom/vkcoffee/android/MenuListView;
    .locals 1

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$12;->this$0:Lcom/vkcoffee/android/MenuListView;

    return-object v0
.end method


# virtual methods
.method public notAvailable(II)V
    .locals 0
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1604
    return-void
.end method

.method public onImageLoaded(Landroid/graphics/Bitmap;II)V
    .locals 7
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "_oid"    # I
    .param p3, "_aid"    # I

    .prologue
    .line 1594
    iget-object v6, p0, Lcom/vkcoffee/android/MenuListView$12;->val$iv:Landroid/widget/ImageView;

    new-instance v0, Lcom/vkcoffee/android/MenuListView$12$1;

    iget v2, p0, Lcom/vkcoffee/android/MenuListView$12;->val$aid:I

    iget v3, p0, Lcom/vkcoffee/android/MenuListView$12;->val$oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/MenuListView$12;->val$iv:Landroid/widget/ImageView;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/MenuListView$12$1;-><init>(Lcom/vkcoffee/android/MenuListView$12;IILandroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 1601
    return-void
.end method
