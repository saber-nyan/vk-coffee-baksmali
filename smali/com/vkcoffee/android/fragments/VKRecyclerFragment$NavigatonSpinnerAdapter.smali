.class public Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;
.super Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;
.source "VKRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "NavigatonSpinnerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/VKRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/VKRecyclerFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/VKRecyclerFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>.NavigatonSpinnerAdapter;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;->this$0:Lcom/vkcoffee/android/fragments/VKRecyclerFragment;

    .line 69
    invoke-direct {p0, p1, p2}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;-><init>(Lme/grishka/appkit/fragments/AppKitFragment;Landroid/content/Context;)V

    .line 70
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 74
    .local p0, "this":Lcom/vkcoffee/android/fragments/VKRecyclerFragment$NavigatonSpinnerAdapter;, "Lcom/vkcoffee/android/fragments/VKRecyclerFragment<TT;>.NavigatonSpinnerAdapter;"
    invoke-super {p0, p1, p2, p3}, Lme/grishka/appkit/fragments/AppKitFragment$NavigationSpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "view":Landroid/view/View;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    .line 76
    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v2, v2, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 78
    :cond_0
    return-object v0
.end method
