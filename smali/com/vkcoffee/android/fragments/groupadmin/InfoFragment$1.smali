.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$000(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$100(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$200(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/ui/DateTimeChooser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->getDate()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 161
    .local v0, "start":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$400(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/ui/DateTimeChooser;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$1;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$300(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;)Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;

    move-result-object v1

    iget v1, v1, Lcom/vkcoffee/android/api/groups/GroupsGetSettings$Result;->endTime:I

    :goto_0
    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/ui/DateTimeChooser;->setDate(I)V

    .line 162
    return-void

    .line 161
    :cond_0
    add-int/lit16 v1, v0, 0x1c20

    goto :goto_0
.end method
