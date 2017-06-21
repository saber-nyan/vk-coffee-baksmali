.class public Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$UsersAdapter;
.super Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;
.source "SuggestFriendsNearbyFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UsersAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;


# direct methods
.method protected constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$UsersAdapter;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;-><init>(Lcom/vkcoffee/android/fragments/SuggestionsFragment;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v2, 0x7f1000d2

    const/4 v3, 0x0

    .line 288
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/SuggestionsFragment$UsersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 289
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 291
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 293
    :cond_0
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 294
    return-object v0
.end method
