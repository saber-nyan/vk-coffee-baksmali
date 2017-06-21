.class Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;
.super Ljava/lang/Object;
.source "InstalledGameSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->access$300(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;)Lcom/vkcoffee/android/data/ApiApplication;

    move-result-object v1

    iget-object v3, v1, Lcom/vkcoffee/android/data/ApiApplication;->icons:[Ljava/lang/String;

    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_1

    const/4 v1, 0x5

    :goto_0
    aget-object v1, v3, v1

    invoke-virtual {v2, v1}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;->this$0:Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;

    invoke-direct {v2, p0, v0}, Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3$1;-><init>(Lcom/vkcoffee/android/fragments/InstalledGameSettingsFragment$3;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    :cond_0
    return-void

    .line 87
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
