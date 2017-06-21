.class Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;
.super Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;
.source "MaterialPreferenceFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/CardItemDecorator$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p2, "wrappedAdapter"    # Landroid/support/v7/widget/RecyclerView$Adapter;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    .line 39
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/ui/adapters/RecyclerWrapperAdapter;-><init>(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getBlockType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 43
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 44
    .local v0, "item":Landroid/support/v7/preference/Preference;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 45
    .local v1, "itemNext":Landroid/support/v7/preference/Preference;
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;

    iget-boolean v4, v4, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment;->isTablet:Z

    if-eqz v4, :cond_1

    move v2, v3

    .line 54
    :cond_0
    :goto_0
    return v2

    .line 48
    :cond_1
    if-eqz p1, :cond_0

    .line 51
    instance-of v4, v0, Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_2

    move v2, v3

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    instance-of v3, v1, Landroid/support/v7/preference/PreferenceCategory;

    if-nez v3, :cond_3

    if-nez v1, :cond_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/MaterialPreferenceFragment$Adapter;->wrappedAdapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    check-cast v0, Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->getItem(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method
