.class Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;
.super Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;
.source "ChatMembersFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Adapter"
.end annotation


# static fields
.field public static final TYPE_BG:I = 0x1

.field public static final TYPE_BUTTON_ADD_USER_TO_CHAT:I = 0x4

.field public static final TYPE_BUTTON_LEAVE_CHAT:I = 0x5

.field public static final TYPE_BUTTON_RETURN_CHAT:I = 0x6

.field public static final TYPE_CHAT_INFO:I = 0x8

.field public static final TYPE_CHAT_NEW:I = 0x7

.field public static final TYPE_CHECK_BOX_PREF:I = 0x2

.field public static final TYPE_MESSAGE_ATTACHMENTS:I = 0xa

.field public static final TYPE_REMOVABLE_CHAT_USER:I = 0x9

.field public static final TYPE_SUMMARY_PREFS:I = 0x3

.field public static final TYPE_TITLE:I


# instance fields
.field addUserToChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field chatInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field chatUsers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;"
        }
    .end annotation
.end field

.field dnd:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field leaveButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field messageAttachments:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field notificationTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field paddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field returnButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field soundChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

.field final synthetic this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

.field usersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;",
            ">;"
        }
    .end annotation
.end field

.field usersTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 557
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter;-><init>()V

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    .line 576
    const/16 v0, 0xa

    new-instance v1, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;

    const v2, 0x7f0201a1

    const v3, 0x7f0800c2

    .line 577
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;-><init>(ILjava/lang/Object;)V

    .line 576
    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->topBottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->messageAttachments:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 579
    const v0, 0x7f0804b0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->notificationTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 580
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$800(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder$Ref;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->soundChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 581
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$900(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder$Ref;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->dnd:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 583
    const v0, 0x7f0800c9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 584
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->addUserToChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersList:Ljava/util/ArrayList;

    .line 587
    const/4 v0, 0x5

    const v1, 0x7f0800c7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->topBottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->leaveButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 589
    const/4 v0, 0x6

    const v1, 0x7f08044f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->topBottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->returnButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 591
    const/4 v0, 0x1

    const v1, 0x7f02004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->paddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;
    .param p2, "x1"    # Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$1;

    .prologue
    .line 557
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)V

    return-void
.end method


# virtual methods
.method public addChatUser(Lcom/vkcoffee/android/ChatUser;)V
    .locals 2
    .param p1, "chatUser"    # Lcom/vkcoffee/android/ChatUser;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1100(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)I

    move-result v0

    iput v0, p1, Lcom/vkcoffee/android/ChatUser;->admin:I

    .line 673
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersList:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method public build()V
    .locals 4

    .prologue
    const v3, 0x7f0200a5

    const/4 v2, 0x1

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v0, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1200(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 693
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->top(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->notificationTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->soundChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->dnd:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->paddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 706
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->messageAttachments:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersTitle:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 712
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->addUserToChat:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 715
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 716
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->paddingBottom:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 719
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->leaveButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 721
    :cond_5
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1300(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 722
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->returnButton:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 725
    :cond_6
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->setData(Ljava/util/List;)V

    .line 726
    return-void

    .line 695
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public getImageCountForItem(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 647
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageURL(II)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "image"    # I

    .prologue
    .line 652
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->type:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    iget-object v0, v0, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->object:Ljava/lang/Object;

    invoke-static {v0}, Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;->getImageUrl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic lambda$onCreateViewHolder$444(Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;)V
    .locals 2
    .param p1, "v"    # Lcom/vkcoffee/android/ui/holder/commons/PreferenceIconItemHolder$IconPrefInfo;

    .prologue
    .line 635
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getPeerID()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;-><init>(I)V

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/messages/ChatAttachmentHistoryFragment$Builder;->go(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0, p1, p2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 599
    packed-switch p2, :pswitch_data_0

    .line 602
    invoke-static {p1}, Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;->darkGrayTitle(Landroid/view/ViewGroup;)Lcom/vkcoffee/android/ui/holder/commons/TitleHolder;

    move-result-object v0

    .line 634
    :goto_0
    return-object v0

    .line 604
    :pswitch_0
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/BackgroundHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 606
    :pswitch_1
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceCheckBoxHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 608
    :pswitch_2
    new-instance v0, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/ui/holder/commons/PreferenceSummaryHolder;-><init>(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 610
    :pswitch_3
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/AddUserToChatHolder;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 612
    :pswitch_4
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$1;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$1;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 619
    :pswitch_5
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$2;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 626
    :pswitch_6
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 628
    :pswitch_7
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder;-><init>(Landroid/content/Context;Z)V

    goto :goto_0

    .line 630
    :pswitch_8
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v2}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1000(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;->setOnClickListenerAndIsCreate(Landroid/view/View$OnClickListener;Z)V

    goto :goto_0

    .line 634
    .end local v0    # "holder":Lcom/vkcoffee/android/ui/holder/messages/RemovableChatUserViewHolder;
    :pswitch_9
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;)Lcom/vkcoffee/android/functions/VoidF1;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter$3;-><init>(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;Landroid/view/ViewGroup;Lcom/vkcoffee/android/functions/VoidF1;)V

    goto :goto_0

    .line 599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public removeChatUser(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 656
    const/4 v1, -0x1

    .line 657
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/ChatUser;

    iget-object v2, v2, Lcom/vkcoffee/android/ChatUser;->user:Lcom/vkcoffee/android/UserProfile;

    iget v2, v2, Lcom/vkcoffee/android/UserProfile;->uid:I

    if-ne v2, p1, :cond_2

    .line 659
    move v1, v0

    .line 663
    :cond_0
    if-ltz v1, :cond_1

    .line 664
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 665
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 667
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->build()V

    .line 669
    :cond_1
    return-void

    .line 657
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public replaceChatUsers(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/ChatUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 678
    .local p1, "chatUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ChatUser;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatUsers:Ljava/util/ArrayList;

    .line 679
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 680
    .local v3, "usersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 681
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 682
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ChatUser;

    .line 683
    .local v0, "chatUser":Lcom/vkcoffee/android/ChatUser;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v4}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$1100(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)I

    move-result v4

    iput v4, v0, Lcom/vkcoffee/android/ChatUser;->admin:I

    .line 684
    const/16 v4, 0x9

    invoke-static {v4, v0}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->middle(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 686
    .end local v0    # "chatUser":Lcom/vkcoffee/android/ChatUser;
    :cond_0
    iput-object v3, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->usersList:Ljava/util/ArrayList;

    .line 687
    return-void
.end method

.method public setIsCreate(Z)V
    .locals 2
    .param p1, "isCreate"    # Z

    .prologue
    .line 594
    if-eqz p1, :cond_0

    const/4 v0, 0x7

    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->this$0:Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;->access$700(Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment;)Lcom/vkcoffee/android/ui/holder/messages/ChatInfoHolder$Ref;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;->bottom(ILjava/lang/Object;)Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/messages/ChatMembersFragment$Adapter;->chatInfo:Lcom/vkcoffee/android/ui/holder/RecyclerSectionAdapter$Data;

    .line 595
    return-void

    .line 594
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
