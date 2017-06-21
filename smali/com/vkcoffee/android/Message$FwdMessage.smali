.class public Lcom/vkcoffee/android/Message$FwdMessage;
.super Lcom/vkcoffee/android/utils/MessageBase;
.source "Message.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FwdMessage"
.end annotation


# instance fields
.field public username:Ljava/lang/String;

.field public userphoto:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 494
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/MessageBase;-><init>()V

    .line 495
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    return-void
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/Message$FwdMessage;
    .locals 6
    .param p0, "s"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 498
    new-instance v3, Lcom/vkcoffee/android/Message$FwdMessage;

    invoke-direct {v3}, Lcom/vkcoffee/android/Message$FwdMessage;-><init>()V

    .line 499
    .local v3, "m":Lcom/vkcoffee/android/Message$FwdMessage;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    .line 500
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/Message$FwdMessage;->time:I

    .line 501
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/vkcoffee/android/Message$FwdMessage;->setText(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    .line 503
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/vkcoffee/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v3, Lcom/vkcoffee/android/Message$FwdMessage;->id:I

    .line 505
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 506
    .local v1, "atts":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 507
    invoke-static {p0}, Lcom/vkcoffee/android/attachments/Attachment;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v0

    .line 508
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v3, v0, v1}, Lcom/vkcoffee/android/Message$FwdMessage;->addAttachment(Lcom/vkcoffee/android/attachments/Attachment;I)V

    .line 506
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_1
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 513
    .local v4, "nfwd":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 514
    invoke-static {p0}, Lcom/vkcoffee/android/Message$FwdMessage;->deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/Message$FwdMessage;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/vkcoffee/android/Message$FwdMessage;->addFwdMessage(Lcom/vkcoffee/android/Message$FwdMessage;I)V

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 516
    :cond_2
    return-object v3
.end method


# virtual methods
.method public serialize(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    iget v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->sender:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 526
    iget v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->time:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 527
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 528
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->username:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 529
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->userphoto:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 530
    iget v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->id:I

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 531
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 532
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->attachments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/attachments/Attachment;->serialize(Ljava/io/DataOutputStream;)V

    .line 532
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 527
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 535
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->fwdMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 536
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->fwdMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 537
    iget-object v1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->fwdMessages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Message$FwdMessage;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/Message$FwdMessage;->serialize(Ljava/io/DataOutputStream;)V

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 539
    :cond_2
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/vkcoffee/android/Message$FwdMessage;->text:Ljava/lang/String;

    .line 521
    invoke-static {p1}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Message$FwdMessage;->displayableText:Ljava/lang/CharSequence;

    .line 522
    return-void
.end method
