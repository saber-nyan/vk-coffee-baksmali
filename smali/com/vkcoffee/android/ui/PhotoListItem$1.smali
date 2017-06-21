.class Lcom/vkcoffee/android/ui/PhotoListItem$1;
.super Ljava/lang/Object;
.source "PhotoListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ui/PhotoListItem;->setBitmapAnimated(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/ui/PhotoListItem;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ui/PhotoListItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/ui/PhotoListItem;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/vkcoffee/android/ui/PhotoListItem$1;->this$0:Lcom/vkcoffee/android/ui/PhotoListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/ui/PhotoListItem$1;->this$0:Lcom/vkcoffee/android/ui/PhotoListItem;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/PhotoListItem;->access$000(Lcom/vkcoffee/android/ui/PhotoListItem;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 64
    return-void
.end method
