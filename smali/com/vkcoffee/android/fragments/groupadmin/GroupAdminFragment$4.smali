.class Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;
.super Ljava/lang/Object;
.source "GroupAdminFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
    .line 193
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lme/grishka/appkit/views/UsableRecyclerView;->findViewHolderForAdapterPosition(I)Lme/grishka/appkit/views/UsableRecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lme/grishka/appkit/views/UsableRecyclerView$Clickable;

    invoke-interface {v0}, Lme/grishka/appkit/views/UsableRecyclerView$Clickable;->onClick()V

    .line 197
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment$4;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/GroupAdminFragment;)Lme/grishka/appkit/views/UsableRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lme/grishka/appkit/views/UsableRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 198
    const/4 v0, 0x1

    return v0
.end method
