.class Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;
.super Ljava/lang/Object;
.source "ChatFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;

.field private final synthetic val$writeBar:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->this$1:Lcom/vkcoffee/android/fragments/messages/ChatFragment$22;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    .line 3190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3192
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3193
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 3195
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3212
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3197
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, "kB6jLLiGYFPoMezl7opiJg=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3200
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, "jgK1jr1O6ySCtdR/so8jTw=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3203
    :pswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, "sgDmD4nEKX2DlboNHvFdXQ=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3206
    :pswitch_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, "xxsQZL1MOwTfWJ55UCbw1g=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vkcoffee/android/Emoji;->parse(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3209
    :pswitch_4
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatFragment$22$1;->val$writeBar:Landroid/widget/EditText;

    const-string v1, "QdWYEhgJI9AJcVyBrjByaw=="

    invoke-static {v1}, Lcom/vkcoffee/android/Java;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3195
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
