.class public Lcom/vkcoffee/android/utils/MessageBase;
.super Ljava/lang/Object;
.source "MessageBase.java"


# instance fields
.field public attachments:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public displayableText:Ljava/lang/CharSequence;

.field public fwdMessages:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/Message$FwdMessage;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public sender:I

.field public text:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public time:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->fwdMessages:Ljava/util/List;

    .line 28
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->attachments:Ljava/util/List;

    .line 27
    return-void
.end method

.method private static addToList(Ljava/util/List;Ljava/lang/Object;I)Ljava/util/List;
    .locals 1
    .param p2, "defaultSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;TT;I)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p0, v0, :cond_0

    if-nez p0, :cond_1

    .line 48
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object p0
.end method

.method private static addToList(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "items":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object p0

    .line 58
    :cond_1
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq p0, v0, :cond_2

    if-nez p0, :cond_3

    .line 59
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .end local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .restart local p0    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_3
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V
    .locals 1
    .param p1, "attachment"    # Lcom/vkcoffee/android/attachments/Attachment;
    .param p2, "defaultSize"    # I

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->attachments:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/utils/MessageBase;->addToList(Ljava/util/List;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->attachments:Ljava/util/List;

    .line 32
    return-void
.end method

.method public addAttachments(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vkcoffee/android/attachments/Attachment;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->attachments:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/utils/MessageBase;->addToList(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->attachments:Ljava/util/List;

    .line 36
    return-void
.end method

.method public addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V
    .locals 1
    .param p1, "fwdMessage"    # Lcom/vkcoffee/android/Message$FwdMessage;
    .param p2, "defaultSize"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->fwdMessages:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lcom/vkcoffee/android/utils/MessageBase;->addToList(Ljava/util/List;Ljava/lang/Object;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->fwdMessages:Ljava/util/List;

    .line 40
    return-void
.end method

.method public addFwdMessages(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/vkcoffee/android/Message$FwdMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "fwdMessages":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/vkcoffee/android/Message$FwdMessage;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->fwdMessages:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/utils/MessageBase;->addToList(Ljava/util/List;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/utils/MessageBase;->fwdMessages:Ljava/util/List;

    .line 44
    return-void
.end method
