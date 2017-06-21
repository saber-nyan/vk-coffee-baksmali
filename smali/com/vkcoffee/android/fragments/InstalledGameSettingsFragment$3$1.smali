.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

.field final synthetic val$bmp:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$400(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;->this$1:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$400(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100007

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;->val$bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_0
    return-void
.end method
