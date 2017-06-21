.class Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;

.field private final synthetic val$small:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;->this$2:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;

    iput-object p2, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;->val$small:Landroid/graphics/Bitmap;

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;->this$2:Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;->access$0(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3;)Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;->access$0(Lcom/vkcoffee/android/MenuListView$HeaderViewHolder;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/MenuListView$HeaderViewHolder$3$1;->val$small:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 472
    return-void
.end method
