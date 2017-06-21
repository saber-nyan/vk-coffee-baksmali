.class Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$3;
.super Landroid/widget/LinearLayout;
.source "GroupAdminFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$3;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 168
    add-int/lit8 v0, p2, 0x1

    sub-int v0, p1, v0

    return v0
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    return v0
.end method
