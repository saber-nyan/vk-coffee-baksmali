.class Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;
.super Ljava/lang/Object;
.source "AudioListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;

.field private final synthetic val$sw:Landroid/widget/ViewFlipper;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;Landroid/widget/ViewFlipper;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;->this$3:Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;->val$sw:Landroid/widget/ViewFlipper;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;->val$sw:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/AudioListFragment$2$1$1$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 195
    return-void
.end method
