.class public Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment$NavigatonSpinnerAdapter;
.super Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;
.source "VkTabbedLoaderFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NavigatonSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment$NavigatonSpinnerAdapter;->this$0:Lcom/vkcoffee/android/fragments/VkTabbedLoaderFragment;

    .line 51
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;Landroid/content/Context;)V

    .line 52
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 58
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    :cond_0
    return-object v0
.end method
