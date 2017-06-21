.class Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$2;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
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
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 153
    invoke-virtual {p3, p2}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    .line 154
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 155
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$2;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    .line 158
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v1

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 160
    :cond_1
    return-void
.end method
