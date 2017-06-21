.class public Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
.super Ljava/lang/Object;
.source "MessageListItem.java"


# static fields
.field public static final TYPE_BOTTOM:I = 0x4

.field public static final TYPE_FULL:I = 0x1

.field public static final TYPE_GIFT:I = 0x7

.field public static final TYPE_MIDDLE:I = 0x3

.field public static final TYPE_SERVICE:I = 0x5

.field public static final TYPE_TOP:I = 0x2

.field public static final TYPE_UNREAD_SEPARATOR:I = 0x6

.field private static volatile sequence:J


# instance fields
.field private attachments:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
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

.field public fwdLevel:I

.field public fwdLevelLast:I

.field public fwdLevelNext:I

.field public fwdName:Ljava/lang/String;

.field public fwdTime:I

.field public fwdUid:I

.field public groupMessagesTime:I

.field public hasLinks:Z

.field private imageAttachments:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/ImageAttachment;",
            ">;"
        }
    .end annotation
.end field

.field private imageUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private imageUrlFwd:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public isFailed:Z

.field public isFirst:Z

.field public isLast:Z

.field public isOut:Z

.field public itemId:J

.field public msgId:I

.field public peer:I

.field public readState:Z

.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;",
            ">;"
        }
    .end annotation
.end field

.field public sender:I

.field public text:Ljava/lang/CharSequence;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public time:I

.field public type:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sequence:J

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->reference:Ljava/lang/ref/WeakReference;

    .line 37
    sget-wide v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sequence:J

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->itemId:J

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 79
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sender:I

    .line 88
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelLast:I

    .line 89
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    .line 90
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelNext:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirst:Z

    .line 100
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isLast:Z

    .line 104
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    .line 106
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    .line 108
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    .line 110
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->reference:Ljava/lang/ref/WeakReference;

    .line 37
    sget-wide v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sequence:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sequence:J

    iput-wide v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->itemId:J

    .line 76
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 79
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sender:I

    .line 88
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelLast:I

    .line 89
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevel:I

    .line 90
    iput v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdLevelNext:I

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirst:Z

    .line 100
    iput-boolean v4, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isLast:Z

    .line 104
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    .line 106
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    .line 108
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    .line 110
    iput-object v5, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    .line 129
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->out:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isOut:Z

    .line 130
    iget v0, p1, Lcom/vkcoffee/android/Message;->id:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    .line 131
    iget v0, p1, Lcom/vkcoffee/android/Message;->peer:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->peer:I

    .line 132
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->readState:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->readState:Z

    .line 133
    iget v0, p1, Lcom/vkcoffee/android/Message;->sender:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->uid:I

    .line 134
    iget v0, p1, Lcom/vkcoffee/android/Message;->time:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    .line 135
    iget-boolean v0, p1, Lcom/vkcoffee/android/Message;->sendFailed:Z

    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFailed:Z

    .line 136
    iget v0, p1, Lcom/vkcoffee/android/Message;->sender:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->sender:I

    .line 137
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/Message$FwdMessage;)V
    .locals 4
    .param p1, "message"    # Lcom/vkcoffee/android/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fwdMessage"    # Lcom/vkcoffee/android/Message$FwdMessage;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;-><init>(Lcom/vkcoffee/android/Message;)V

    .line 143
    iget-object v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    .line 144
    iget-object v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v2, p2, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 145
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const-class v3, Landroid/text/style/URLSpan;

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasLinks:Z

    .line 146
    iget-object v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachments(Ljava/util/List;)V

    .line 147
    const-string/jumbo v0, "DELETED"

    iget-object v1, p2, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080293

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdName:Ljava/lang/String;

    .line 148
    iget v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->time:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdTime:I

    .line 149
    iget v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    iput v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->fwdUid:I

    .line 150
    return-void

    :cond_0
    move v0, v1

    .line 145
    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p2, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    goto :goto_1
.end method

.method private getHolder()Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->reference:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    goto :goto_0
.end method

.method public static processItemIds(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;",
            ">;>(TT;)TT;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "items":Ljava/util/List;, "TT;"
    const/4 v3, 0x0

    .line 41
    .local v3, "offset":I
    const/4 v2, 0x0

    .line 42
    .local v2, "msgId":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 43
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    .line 44
    .local v1, "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    iget v5, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    if-eqz v5, :cond_0

    iget v5, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    if-eq v5, v2, :cond_0

    .line 45
    const/4 v3, 0x0

    .line 46
    iget v2, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->msgId:I

    .line 48
    :cond_0
    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isTime()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 49
    iget v5, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->time:I

    mul-int/lit8 v5, v5, 0x64

    add-int/lit8 v5, v5, 0x63

    int-to-long v6, v5

    iput-wide v6, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->itemId:J

    .line 42
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    mul-int/lit8 v5, v2, 0x64

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "offset":I
    .local v4, "offset":I
    add-int/2addr v5, v3

    int-to-long v6, v5

    iput-wide v6, v1, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->itemId:J

    move v3, v4

    .end local v4    # "offset":I
    .restart local v3    # "offset":I
    goto :goto_1

    .line 54
    .end local v1    # "item":Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;
    :cond_2
    return-object p0
.end method


# virtual methods
.method public getImageCount()I
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasMainPhoto()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 217
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    :goto_0
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "image"    # I

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateImageAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 230
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->hasMainPhoto()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOrCreateAttachments()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    goto :goto_0
.end method

.method public getOrCreateImageAttachments()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/ImageAttachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    goto :goto_0
.end method

.method public hasAttachments()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMainPhoto()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isShowPhoto()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFirstBubbleBg()Z
    .locals 4

    .prologue
    .line 120
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->peer:I

    int-to-double v0, v0

    const-wide v2, 0x41ddcd6500000000L    # 2.0E9

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->isFirst:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGraffiti()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isShowPhoto()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public isSticker()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTime()Z
    .locals 2

    .prologue
    .line 153
    iget v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->text:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAttachment(ILcom/vkcoffee/android/attachments/Attachment;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "attachment"    # Lcom/vkcoffee/android/attachments/Attachment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getOrCreateAttachments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->setAttachments(Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public setAttachments(Ljava/util/List;)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->attachments:Ljava/util/List;

    .line 171
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    .line 172
    if-eqz p1, :cond_2

    .line 173
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 174
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    if-nez v2, :cond_1

    .line 176
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    .line 178
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageAttachments:Ljava/util/List;

    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_2
    return-void
.end method

.method public setHolder(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->reference:Ljava/lang/ref/WeakReference;

    .line 71
    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "imageUrl":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrl:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public setImageUrlFwd(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageUrlFwd"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 161
    if-nez p1, :cond_0

    const-string/jumbo p1, ""

    .end local p1    # "imageUrlFwd":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->imageUrlFwd:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public updateHolder(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;->getHolder()Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;

    move-result-object v0

    .line 59
    .local v0, "holder":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->lastItem:Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;

    if-ne v1, p0, :cond_0

    .line 60
    invoke-virtual {v0, p0, p1}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;->bind(Lcom/vkcoffee/android/ui/holder/messages/MessageListItem;Z)V

    .line 62
    :cond_0
    return-void
.end method
