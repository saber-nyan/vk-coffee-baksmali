.class Lcom/vkcoffee/android/fragments/SettingsListFragment$3;
.super Ljava/lang/Object;
.source "SettingsListFragment.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ViewImageLoader$Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SettingsListFragment;->setUserPhoto(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

.field private final synthetic val$photo:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SettingsListFragment;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->val$photo:Landroid/widget/ImageView;

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->val$photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 334
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->this$0:Lcom/vkcoffee/android/fragments/SettingsListFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/SettingsListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 336
    .local v0, "d":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setAntiAlias(Z)V

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    .line 338
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->val$photo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    .end local v0    # "d":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/SettingsListFragment$3;->val$photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 331
    return-void
.end method
