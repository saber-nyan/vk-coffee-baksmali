.class Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;
.super Ljava/lang/Object;
.source "NotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/events/NotificationCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnNotificationListenerContainer"
.end annotation


# instance fields
.field volatile deleted:Z

.field eventId:I

.field eventType:I

.field listener:Lcom/vk/attachpicker/events/NotificationListener;

.field final synthetic this$0:Lcom/vk/attachpicker/events/NotificationCenter;

.field wasAddedInUIThread:Z


# direct methods
.method private constructor <init>(Lcom/vk/attachpicker/events/NotificationCenter;IILcom/vk/attachpicker/events/NotificationListener;Z)V
    .locals 1
    .param p2, "eventType"    # I
    .param p3, "eventId"    # I
    .param p4, "listener"    # Lcom/vk/attachpicker/events/NotificationListener;
    .param p5, "wasAddedInUIThread"    # Z

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->this$0:Lcom/vk/attachpicker/events/NotificationCenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->deleted:Z

    .line 184
    iput p2, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventType:I

    .line 185
    iput p3, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventId:I

    .line 186
    iput-object p4, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->listener:Lcom/vk/attachpicker/events/NotificationListener;

    .line 187
    iput-boolean p5, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->wasAddedInUIThread:Z

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/vk/attachpicker/events/NotificationCenter;IILcom/vk/attachpicker/events/NotificationListener;ZLcom/vk/attachpicker/events/NotificationCenter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vk/attachpicker/events/NotificationCenter;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Lcom/vk/attachpicker/events/NotificationListener;
    .param p5, "x4"    # Z
    .param p6, "x5"    # Lcom/vk/attachpicker/events/NotificationCenter$1;

    .prologue
    .line 175
    invoke-direct/range {p0 .. p5}, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;-><init>(Lcom/vk/attachpicker/events/NotificationCenter;IILcom/vk/attachpicker/events/NotificationListener;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 193
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 195
    check-cast v0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;

    .line 197
    .local v0, "that":Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;
    iget v3, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventId:I

    iget v4, v0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventId:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 198
    :cond_4
    iget v3, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventType:I

    iget v4, v0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventType:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->listener:Lcom/vk/attachpicker/events/NotificationListener;

    iget-object v4, v0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->listener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 206
    iget v0, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventType:I

    .line 207
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventId:I

    add-int v0, v1, v2

    .line 208
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->listener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 209
    return v0
.end method

.method public isDeleted()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->deleted:Z

    return v0
.end method

.method public setDeleted(Z)V
    .locals 0
    .param p1, "deleted"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->deleted:Z

    .line 227
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnNotificationListenerContainer{eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->eventId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", listener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/events/NotificationCenter$OnNotificationListenerContainer;->listener:Lcom/vk/attachpicker/events/NotificationListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
