.class Lcom/vkcoffee/android/MenuListView$12$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$12;->onImageLoaded(Landroid/graphics/Bitmap;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/MenuListView$12;

.field private final synthetic val$aid:I

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$iv:Landroid/widget/ImageView;

.field private final synthetic val$oid:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$12;IILandroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$12$1;->this$1:Lcom/vkcoffee/android/MenuListView$12;

    iput p2, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$aid:I

    iput p3, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$oid:I

    iput-object p4, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$iv:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 1594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$12$1;->this$1:Lcom/vkcoffee/android/MenuListView$12;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$12;->access$0(Lcom/vkcoffee/android/MenuListView$12;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$aid:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListView;->access$10(Lcom/vkcoffee/android/MenuListView;I)V

    .line 1597
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$12$1;->this$1:Lcom/vkcoffee/android/MenuListView$12;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$12;->access$0(Lcom/vkcoffee/android/MenuListView$12;)Lcom/vkcoffee/android/MenuListView;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$oid:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/MenuListView;->access$9(Lcom/vkcoffee/android/MenuListView;I)V

    .line 1598
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$12$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1599
    return-void
.end method
