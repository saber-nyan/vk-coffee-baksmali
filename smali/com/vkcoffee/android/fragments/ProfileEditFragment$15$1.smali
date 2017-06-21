.class Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;
.super Ljava/lang/Object;
.source "ProfileEditFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;

.field private final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;->val$bmp:Landroid/graphics/Bitmap;

    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 466
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;->this$1:Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;->access$0(Lcom/vkcoffee/android/fragments/ProfileEditFragment$15;)Lcom/vkcoffee/android/fragments/ProfileEditFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/ProfileEditFragment;->access$11(Lcom/vkcoffee/android/fragments/ProfileEditFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/ProfileEditFragment$15$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 467
    return-void
.end method
