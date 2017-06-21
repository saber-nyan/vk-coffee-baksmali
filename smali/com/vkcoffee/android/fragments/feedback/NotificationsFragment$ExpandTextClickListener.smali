.class public Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ExpandTextClickListener"
.end annotation


# instance fields
.field public item:Lcom/vkcoffee/android/api/models/Notification;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;
    .param p2, "item"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 345
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 346
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/api/models/Notification;

    .line 347
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v0, v0, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    check-cast v0, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;->expandText()Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-result-object v0

    iput-object v0, v1, Lcom/vkcoffee/android/api/models/Notification;->item:Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$700(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->this$0:Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;->access$600(Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$ExpandTextClickListener;->item:Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/feedback/NotificationsFragment$NotificationsAdapter;->notifyItemChanged(I)V

    .line 354
    return-void
.end method
