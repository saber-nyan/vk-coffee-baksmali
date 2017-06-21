.class public abstract Lcom/vkcoffee/android/attachments/Attachment;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "Attachment.java"


# static fields
.field private static reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/ActivityLocal",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/vkcoffee/android/utils/ActivityLocal;

    invoke-direct {v0}, Lcom/vkcoffee/android/utils/ActivityLocal;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    return-void
.end method

.method public static appendLocalizedDescription(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 447
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 443
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "desc":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p0, v0

    .line 445
    goto :goto_0

    .line 447
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static deserialize(Ljava/io/DataInputStream;)Lcom/vkcoffee/android/attachments/Attachment;
    .locals 2
    .param p0, "is"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Lcom/vkcoffee/android/utils/Serializer;->get(Ljava/io/DataInput;)Lcom/vkcoffee/android/utils/Serializer;

    move-result-object v0

    const-class v1, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    return-object v0
.end method

.method public static getLocalizedDescription(Lcom/vkcoffee/android/attachments/Attachment;)Ljava/lang/String;
    .locals 2
    .param p0, "att"    # Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 391
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080344

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    .line 393
    :cond_0
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v0, :cond_1

    .line 394
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080583

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_1
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-eqz v0, :cond_2

    .line 396
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080085

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 397
    :cond_2
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v0, :cond_3

    .line 398
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f08012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 399
    :cond_3
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/PostAttachment;

    if-eqz v0, :cond_4

    .line 400
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080080

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 401
    :cond_4
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v0, :cond_5

    .line 402
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080395

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_5
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v0, :cond_6

    .line 404
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080512

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :cond_6
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v0, :cond_7

    .line 406
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f0801e8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 407
    :cond_7
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v0, :cond_8

    .line 408
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f08007f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 409
    :cond_8
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/NoteAttachment;

    if-eqz v0, :cond_9

    .line 410
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 411
    :cond_9
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/WikiAttachment;

    if-eqz v0, :cond_a

    .line 412
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080081

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :cond_a
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/LinkAttachment;

    if-eqz v0, :cond_b

    .line 414
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f08007b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 415
    :cond_b
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;

    if-eqz v0, :cond_c

    .line 416
    check-cast p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;

    .end local p0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/ChronicleAttachment;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 417
    .restart local p0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_c
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v0, :cond_d

    .line 418
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f0801fc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 419
    :cond_d
    instance-of v0, p0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    if-eqz v0, :cond_e

    .line 420
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f08036c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 422
    :cond_e
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static getLocalizedDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v4, 0x0

    .line 427
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 428
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-static {v2}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Lcom/vkcoffee/android/attachments/Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 436
    :goto_0
    return-object v2

    .line 430
    :cond_0
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 431
    .local v1, "firstType":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 432
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 433
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 436
    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-static {v2}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Lcom/vkcoffee/android/attachments/Attachment;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 289
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 290
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/vkcoffee/android/utils/ActivityLocal;->put(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 292
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    :cond_1
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 298
    sget-object v1, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 347
    :cond_2
    :goto_0
    return-object v0

    .line 301
    .restart local p0    # "context":Landroid/content/Context;
    :cond_3
    const-string/jumbo v1, "common"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 302
    const v1, 0x7f030134

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 303
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v0    # "v":Landroid/view/View;
    :cond_4
    const-string/jumbo v1, "signature"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 306
    const v1, 0x7f030135

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 307
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 309
    .end local v0    # "v":Landroid/view/View;
    :cond_5
    const-string/jumbo v1, "audio"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 311
    new-instance v0, Lcom/vkcoffee/android/AudioAttachView;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioAttachView;-><init>(Landroid/content/Context;)V

    .line 312
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    .end local v0    # "v":Landroid/view/View;
    :cond_6
    const-string/jumbo v1, "album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 315
    const v1, 0x7f030035

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 316
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    .end local v0    # "v":Landroid/view/View;
    :cond_7
    const-string/jumbo v1, "video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 319
    const v1, 0x7f030045

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 320
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 322
    .end local v0    # "v":Landroid/view/View;
    :cond_8
    const-string/jumbo v1, "video_single"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 323
    const v1, 0x7f030047

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 324
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 326
    .end local v0    # "v":Landroid/view/View;
    :cond_9
    const-string/jumbo v1, "photo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 327
    new-instance v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;-><init>(Landroid/content/Context;)V

    .line 328
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 330
    .end local v0    # "v":Landroid/view/View;
    :cond_a
    const-string/jumbo v1, "market_album"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 331
    new-instance v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;-><init>(Landroid/content/Context;)V

    .line 332
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 334
    .end local v0    # "v":Landroid/view/View;
    :cond_b
    const-string/jumbo v1, "doc_thumb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 335
    const v1, 0x7f030038

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 336
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 338
    .end local v0    # "v":Landroid/view/View;
    :cond_c
    const-string/jumbo v1, "repost"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 339
    const v1, 0x7f03019c

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 340
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 342
    .end local v0    # "v":Landroid/view/View;
    :cond_d
    const-string/jumbo v1, "animation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    const v1, 0x7f030036

    invoke-static {p0, v1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 344
    .restart local v0    # "v":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;
    .locals 51
    .param p0, "o"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    :try_start_0
    const-string/jumbo v5, "type"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 66
    .local v46, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v34

    .line 67
    .local v34, "att":Lorg/json/JSONObject;
    const-string/jumbo v5, "market"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v5, Lcom/vkcoffee/android/attachments/MarketAttachment;

    new-instance v6, Lcom/vkcoffee/android/data/Good;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/data/Good;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/MarketAttachment;-><init>(Lcom/vkcoffee/android/data/Good;)V

    .line 263
    .end local v34    # "att":Lorg/json/JSONObject;
    .end local v46    # "type":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 70
    .restart local v34    # "att":Lorg/json/JSONObject;
    .restart local v46    # "type":Ljava/lang/String;
    :cond_0
    const-string/jumbo v5, "photo"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 71
    const-string/jumbo v5, "sizes"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 72
    .local v44, "sizes":Lorg/json/JSONArray;
    if-eqz v44, :cond_2

    .line 73
    new-instance v5, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    new-instance v6, Lcom/vkcoffee/android/Photo;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Lcom/vkcoffee/android/Photo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    .end local v34    # "att":Lorg/json/JSONObject;
    .end local v44    # "sizes":Lorg/json/JSONArray;
    .end local v46    # "type":Ljava/lang/String;
    :catch_0
    move-exception v50

    .line 260
    .local v50, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    move-object/from16 v0, v50

    invoke-static {v5, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 262
    .end local v50    # "x":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unknown attachment "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v5, 0x0

    goto :goto_0

    .line 75
    .restart local v34    # "att":Lorg/json/JSONObject;
    .restart local v44    # "sizes":Lorg/json/JSONArray;
    .restart local v46    # "type":Ljava/lang/String;
    :cond_2
    :try_start_1
    new-instance v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/4 v6, 0x0

    new-instance v8, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v9, 0x6d

    const-string/jumbo v10, "src"

    .line 76
    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v8, v5, v6

    const/4 v6, 0x1

    new-instance v8, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v9, 0x78

    const-string/jumbo v10, "src_big"

    .line 77
    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v8, v5, v6

    const/4 v6, 0x2

    new-instance v8, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v9, 0x79

    const-string/jumbo v10, "src_xbig"

    const/4 v11, 0x0

    .line 78
    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v8, v9, v10, v11, v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v8, v5, v6

    const-string/jumbo v6, "owner_id"

    .line 79
    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string/jumbo v8, "id"

    const-string/jumbo v9, "gid"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "aid"

    const/4 v9, -0x7

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "text"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "user_id"

    const-string/jumbo v11, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, v34

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "created"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v16, "access_key"

    const-string/jumbo v17, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const-wide v14, -0x3f3e6c0000000000L    # -9000.0

    const-wide v16, -0x3f3e6c0000000000L    # -9000.0

    invoke-direct/range {v4 .. v17}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;IDD)V

    move-object v5, v4

    goto/16 :goto_0

    .line 82
    .end local v44    # "sizes":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v5, "graffiti"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 83
    new-instance v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    const-string/jumbo v5, "photo_200"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "photo_586"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x80000000

    invoke-direct/range {v4 .. v9}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 84
    .local v4, "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0xc8

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 85
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x64

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    .line 86
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x24a

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 87
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x125

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    move-object v5, v4

    .line 88
    goto/16 :goto_0

    .line 90
    .end local v4    # "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_4
    const-string/jumbo v5, "posted_photo"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    new-instance v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    const-string/jumbo v5, "photo_130"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "photo_604"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const/high16 v9, -0x80000000

    invoke-direct/range {v4 .. v9}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 92
    .restart local v4    # "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x82

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 93
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x62

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    .line 94
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x25c

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 95
    iget-object v5, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v6, 0x1e0

    iput v6, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    move-object v5, v4

    .line 96
    goto/16 :goto_0

    .line 98
    .end local v4    # "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    :cond_5
    const-string/jumbo v5, "album"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 99
    const-string/jumbo v5, "thumb"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "sizes"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 100
    .restart local v44    # "sizes":Lorg/json/JSONArray;
    if-eqz v44, :cond_7

    .line 101
    new-instance v41, Ljava/util/ArrayList;

    invoke-direct/range {v41 .. v41}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v41, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_1
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_6

    .line 103
    move-object/from16 v0, v44

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v45

    .line 104
    .local v45, "so":Lorg/json/JSONObject;
    new-instance v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const-string/jumbo v6, "type"

    const-string/jumbo v8, "?"

    move-object/from16 v0, v45

    invoke-virtual {v0, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const-string/jumbo v8, "src"

    move-object/from16 v0, v45

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "width"

    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "height"

    move-object/from16 v0, v45

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    .line 106
    .end local v45    # "so":Lorg/json/JSONObject;
    :cond_6
    new-instance v5, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const-string/jumbo v8, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "pid"

    const/4 v9, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "id"

    const/4 v10, -0x7

    move-object/from16 v0, v34

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v10, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "size"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/vkcoffee/android/attachments/AlbumAttachment;-><init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 108
    .end local v35    # "i":I
    .end local v41    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    :cond_7
    new-instance v5, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/4 v8, 0x0

    new-instance v9, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v10, 0x6d

    const-string/jumbo v11, "thumb"

    .line 109
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v16, "src"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v10, v11, v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v9, v6, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v10, 0x78

    const-string/jumbo v11, "thumb"

    .line 110
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v16, "src_big"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v10, v11, v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v9, v6, v8

    const/4 v8, 0x2

    new-instance v9, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v10, 0x79

    const-string/jumbo v11, "thumb"

    .line 111
    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    const-string/jumbo v16, "src_xbig"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v9, v10, v11, v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v9, v6, v8

    const-string/jumbo v8, "owner_id"

    .line 112
    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "pid"

    const-string/jumbo v9, "gid"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    move-object/from16 v0, v34

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "aid"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "size"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-direct/range {v5 .. v11}, Lcom/vkcoffee/android/attachments/AlbumAttachment;-><init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;I)V

    goto/16 :goto_0

    .line 115
    .end local v44    # "sizes":Lorg/json/JSONArray;
    :cond_8
    const-string/jumbo v5, "app"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 116
    new-instance v5, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    const-string/jumbo v6, "src"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct/range {v5 .. v10}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    goto/16 :goto_0

    .line 118
    :cond_9
    const-string/jumbo v5, "audio"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 119
    new-instance v5, Lcom/vkcoffee/android/attachments/AudioAttachment;

    new-instance v6, Lcom/vkcoffee/android/AudioFile;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/AudioFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/AudioAttachment;-><init>(Lcom/vkcoffee/android/AudioFile;)V

    goto/16 :goto_0

    .line 121
    :cond_a
    const-string/jumbo v5, "market_album"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 122
    new-instance v5, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    new-instance v6, Lcom/vkcoffee/android/data/GoodAlbum;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/data/GoodAlbum;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;-><init>(Lcom/vkcoffee/android/data/GoodAlbum;)V

    goto/16 :goto_0

    .line 124
    :cond_b
    const-string/jumbo v5, "video"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 125
    new-instance v5, Lcom/vkcoffee/android/attachments/VideoAttachment;

    new-instance v6, Lcom/vkcoffee/android/api/VideoFile;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/api/VideoFile;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    goto/16 :goto_0

    .line 127
    :cond_c
    const-string/jumbo v5, "doc"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 128
    const-string/jumbo v5, "preview"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v43

    .line 129
    .local v43, "preview":Lorg/json/JSONObject;
    if-eqz v43, :cond_d

    const-string/jumbo v5, "graffiti"

    move-object/from16 v0, v43

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 130
    new-instance v5, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    new-instance v6, Lcom/vkcoffee/android/api/Document;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    goto/16 :goto_0

    .line 132
    :cond_d
    new-instance v5, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    new-instance v6, Lcom/vkcoffee/android/api/Document;

    move-object/from16 v0, v34

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/api/Document;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    goto/16 :goto_0

    .line 135
    .end local v43    # "preview":Lorg/json/JSONObject;
    :cond_e
    const-string/jumbo v5, "gift"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 136
    new-instance v5, Lcom/vkcoffee/android/attachments/GiftAttachment;

    const-string/jumbo v6, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "thumb_48"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "thumb_96"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "thumb_256"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const-string/jumbo v9, "stickers_product_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v6, v8, v9}, Lcom/vkcoffee/android/attachments/GiftAttachment;-><init>(I[Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 138
    :cond_f
    const-string/jumbo v5, "link"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 139
    const-string/jumbo v5, "photo"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 140
    const-string/jumbo v5, "product"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const-string/jumbo v5, "product"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "price"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "descr":Ljava/lang/String;
    :goto_2
    const-string/jumbo v12, ""

    .local v12, "btn":Ljava/lang/String;
    const-string/jumbo v13, ""

    .line 142
    .local v13, "btnLink":Ljava/lang/String;
    const-string/jumbo v5, "button"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 143
    const-string/jumbo v5, "button"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "title"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 144
    const-string/jumbo v5, "button"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 146
    :cond_10
    const/4 v14, 0x0

    .line 147
    .local v14, "rating":F
    const/4 v15, 0x0

    .line 148
    .local v15, "reviewCount":I
    const-string/jumbo v5, "rating"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 149
    const-string/jumbo v5, "rating"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "stars"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v14, v8

    .line 150
    const-string/jumbo v5, "rating"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "reviews_count"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 152
    :cond_11
    new-instance v5, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    const-string/jumbo v6, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "caption"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "url"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/vkcoffee/android/Photo;

    const-string/jumbo v11, "photo"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v11, "product"

    move-object/from16 v0, v34

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    const-string/jumbo v16, "preview_page"

    move-object/from16 v0, v34

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v5 .. v16}, Lcom/vkcoffee/android/attachments/SnippetAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vkcoffee/android/Photo;ZLjava/lang/String;Ljava/lang/String;FILjava/lang/String;)V

    goto/16 :goto_0

    .line 140
    .end local v7    # "descr":Ljava/lang/String;
    .end local v12    # "btn":Ljava/lang/String;
    .end local v13    # "btnLink":Ljava/lang/String;
    .end local v14    # "rating":F
    .end local v15    # "reviewCount":I
    :cond_12
    const-string/jumbo v5, "description"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 154
    :cond_13
    new-instance v5, Lcom/vkcoffee/android/attachments/LinkAttachment;

    const-string/jumbo v6, "url"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "preview_page"

    const-string/jumbo v10, ""

    move-object/from16 v0, v34

    invoke-virtual {v0, v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v6, v8, v9}, Lcom/vkcoffee/android/attachments/LinkAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 156
    :cond_14
    const-string/jumbo v5, "poll"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 157
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v20, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/PollAttachment$Answer;>;"
    const-string/jumbo v5, "answers"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v37

    .line 159
    .local v37, "ja":Lorg/json/JSONArray;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_3
    invoke-virtual/range {v37 .. v37}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_15

    .line 160
    move-object/from16 v0, v37

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v36

    .line 161
    .local v36, "j":Lorg/json/JSONObject;
    new-instance v33, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    invoke-direct/range {v33 .. v33}, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;-><init>()V

    .line 162
    .local v33, "a":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    const-string/jumbo v5, "id"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    iput v5, v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    .line 163
    const-string/jumbo v5, "text"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v33

    iput-object v5, v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    .line 164
    const-string/jumbo v5, "votes"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v33

    iput v5, v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    .line 165
    const-string/jumbo v5, "rate"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v5, v8

    move-object/from16 v0, v33

    iput v5, v0, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    .line 166
    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 168
    .end local v33    # "a":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    .end local v36    # "j":Lorg/json/JSONObject;
    :cond_15
    new-instance v16, Lcom/vkcoffee/android/attachments/PollAttachment;

    const-string/jumbo v5, "question"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v5, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v18

    const-string/jumbo v5, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v19

    const-string/jumbo v5, "votes"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v21

    const-string/jumbo v5, "answer_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v5, "anonymous"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    const/16 v23, 0x1

    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v0, v8

    move/from16 v24, v0

    invoke-direct/range {v16 .. v24}, Lcom/vkcoffee/android/attachments/PollAttachment;-><init>(Ljava/lang/String;IILjava/util/ArrayList;IIZI)V

    move-object/from16 v5, v16

    goto/16 :goto_0

    :cond_16
    const/16 v23, 0x0

    goto :goto_4

    .line 170
    .end local v20    # "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/PollAttachment$Answer;>;"
    .end local v35    # "i":I
    .end local v37    # "ja":Lorg/json/JSONArray;
    :cond_17
    const-string/jumbo v5, "note"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 171
    new-instance v5, Lcom/vkcoffee/android/attachments/NoteAttachment;

    const-string/jumbo v6, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v5, v6, v8, v9}, Lcom/vkcoffee/android/attachments/NoteAttachment;-><init>(Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 173
    :cond_18
    const-string/jumbo v5, "page"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 174
    new-instance v5, Lcom/vkcoffee/android/attachments/WikiAttachment;

    const-string/jumbo v6, "title"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "section"

    move-object/from16 v0, v34

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "group_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    neg-int v9, v9

    const-string/jumbo v10, "page_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/vkcoffee/android/attachments/WikiAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto/16 :goto_0

    .line 176
    :cond_19
    const-string/jumbo v5, "wall"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 178
    const-string/jumbo v5, "copy_post_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string/jumbo v5, "copy_history"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 179
    :cond_1a
    const/4 v5, 0x1

    new-array v0, v5, [Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v42, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v42, v5

    .line 180
    .local v42, "post":[Lcom/vkcoffee/android/NewsEntry;
    new-instance v5, Lcom/vkcoffee/android/api/wall/WallGetById;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "to_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/attachments/Attachment$1;

    move-object/from16 v0, v42

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/attachments/Attachment$1;-><init>([Lcom/vkcoffee/android/NewsEntry;)V

    .line 181
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 187
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 188
    const/4 v5, 0x0

    aget-object v5, v42, v5

    if-nez v5, :cond_1b

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1b
    new-instance v5, Lcom/vkcoffee/android/attachments/PostAttachment;

    const/4 v6, 0x0

    aget-object v6, v42, v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/PostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    goto/16 :goto_0

    .line 190
    .end local v42    # "post":[Lcom/vkcoffee/android/NewsEntry;
    :cond_1c
    new-instance v38, Landroid/util/SparseArray;

    invoke-direct/range {v38 .. v38}, Landroid/util/SparseArray;-><init>()V

    .local v38, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    new-instance v40, Landroid/util/SparseArray;

    invoke-direct/range {v40 .. v40}, Landroid/util/SparseArray;-><init>()V

    .line 191
    .local v40, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const-string/jumbo v5, "from"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v48

    .line 192
    .local v48, "users1":Lorg/json/JSONObject;
    const-string/jumbo v5, "copy_owner"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v49

    .line 193
    .local v49, "users2":Lorg/json/JSONObject;
    if-eqz v48, :cond_24

    .line 194
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_5
    invoke-virtual/range {v48 .. v48}, Lorg/json/JSONObject;->length()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_24

    .line 195
    const-string/jumbo v5, "id"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 196
    const-string/jumbo v5, "id"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 197
    .local v47, "uid":I
    const-string/jumbo v5, "first_name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first_name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "last_name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 199
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1d

    const-string/jumbo v5, "photo_100"

    :goto_6
    const-string/jumbo v6, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 194
    :goto_7
    add-int/lit8 v35, v35, 0x1

    goto :goto_5

    .line 199
    :cond_1d
    const-string/jumbo v5, "photo_50"

    goto :goto_6

    .line 201
    :cond_1e
    move/from16 v0, v47

    neg-int v5, v0

    const-string/jumbo v6, "name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 202
    move/from16 v0, v47

    neg-int v6, v0

    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-lez v5, :cond_1f

    const-string/jumbo v5, "photo_100"

    :goto_8
    const-string/jumbo v8, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    :cond_1f
    const-string/jumbo v5, "photo_50"

    goto :goto_8

    .line 204
    .end local v47    # "uid":I
    :cond_20
    const-string/jumbo v5, "uid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 205
    const-string/jumbo v5, "uid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 206
    .restart local v47    # "uid":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first_name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "last_name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 207
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_21

    const-string/jumbo v5, "photo_medium_rec"

    :goto_9
    const-string/jumbo v6, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_21
    const-string/jumbo v5, "photo_rec"

    goto :goto_9

    .line 209
    .end local v47    # "uid":I
    :cond_22
    const-string/jumbo v5, "gid"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v47, v0

    .line 210
    .restart local v47    # "uid":I
    const-string/jumbo v5, "name"

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_23

    const-string/jumbo v5, "photo_100"

    :goto_a
    const-string/jumbo v6, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_7

    :cond_23
    const-string/jumbo v5, "photo_50"

    goto :goto_a

    .line 215
    .end local v35    # "i":I
    .end local v47    # "uid":I
    :cond_24
    if-eqz v49, :cond_2b

    .line 216
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_b
    invoke-virtual/range {v49 .. v49}, Lorg/json/JSONObject;->length()I

    move-result v5

    move/from16 v0, v35

    if-ge v0, v5, :cond_2b

    .line 217
    const-string/jumbo v5, "id"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 218
    const-string/jumbo v5, "id"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v47

    .line 219
    .restart local v47    # "uid":I
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_26

    const-string/jumbo v5, "photo_medium_rec"

    :goto_c
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 220
    .local v39, "ph":Ljava/lang/String;
    if-nez v39, :cond_25

    .line 221
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_27

    const-string/jumbo v5, "photo_100"

    :goto_d
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 223
    :cond_25
    const-string/jumbo v5, "first_name"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "first_name"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "last_name"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    move-object/from16 v0, v40

    move/from16 v1, v47

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    .end local v39    # "ph":Ljava/lang/String;
    :goto_e
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_b

    .line 219
    :cond_26
    const-string/jumbo v5, "photo_rec"

    goto :goto_c

    .line 221
    .restart local v39    # "ph":Ljava/lang/String;
    :cond_27
    const-string/jumbo v5, "photo_50"

    goto :goto_d

    .line 227
    :cond_28
    move/from16 v0, v47

    neg-int v5, v0

    const-string/jumbo v6, "name"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    move/from16 v0, v47

    neg-int v5, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    .line 231
    .end local v39    # "ph":Ljava/lang/String;
    .end local v47    # "uid":I
    :cond_29
    const-string/jumbo v5, "gid"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    neg-int v0, v5

    move/from16 v47, v0

    .line 232
    .restart local v47    # "uid":I
    const-string/jumbo v5, "name"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v38

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 233
    sget v5, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2a

    const-string/jumbo v5, "photo"

    :goto_f
    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v40

    move/from16 v1, v47

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_e

    :cond_2a
    const-string/jumbo v5, "photo_medium"

    goto :goto_f

    .line 237
    .end local v35    # "i":I
    .end local v47    # "uid":I
    :cond_2b
    new-instance v5, Lcom/vkcoffee/android/attachments/PostAttachment;

    new-instance v6, Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v0, v34

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v6, v0, v1, v2}, Lcom/vkcoffee/android/NewsEntry;-><init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/PostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    goto/16 :goto_0

    .line 239
    .end local v38    # "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v40    # "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v48    # "users1":Lorg/json/JSONObject;
    .end local v49    # "users2":Lorg/json/JSONObject;
    :cond_2c
    const-string/jumbo v5, "sticker"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 240
    const/4 v5, 0x3

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const-string/jumbo v6, "photo_64"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "photo_128"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "photo_256"

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v23, v5

    .line 241
    .local v23, "imgs":[Ljava/lang/String;
    const-string/jumbo v5, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 242
    .local v22, "id":I
    new-instance v21, Lcom/vkcoffee/android/attachments/StickerAttachment;

    const-string/jumbo v5, "width"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    const-string/jumbo v5, "height"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string/jumbo v5, "product_id"

    const/4 v6, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    invoke-direct/range {v21 .. v26}, Lcom/vkcoffee/android/attachments/StickerAttachment;-><init>(I[Ljava/lang/String;III)V

    move-object/from16 v5, v21

    goto/16 :goto_0

    .line 244
    .end local v22    # "id":I
    .end local v23    # "imgs":[Ljava/lang/String;
    :cond_2d
    const-string/jumbo v5, "wall_reply"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 245
    const/4 v5, 0x1

    new-array v0, v5, [Lcom/vkcoffee/android/NewsEntry;

    move-object/from16 v42, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-object v6, v42, v5

    .line 246
    .restart local v42    # "post":[Lcom/vkcoffee/android/NewsEntry;
    new-instance v5, Lcom/vkcoffee/android/api/wall/WallGetById;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "post_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;-><init>([Ljava/lang/String;)V

    new-instance v6, Lcom/vkcoffee/android/attachments/Attachment$2;

    move-object/from16 v0, v42

    invoke-direct {v6, v0}, Lcom/vkcoffee/android/attachments/Attachment$2;-><init>([Lcom/vkcoffee/android/NewsEntry;)V

    .line 247
    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/wall/WallGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    .line 253
    invoke-virtual {v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 254
    const/4 v5, 0x0

    aget-object v5, v42, v5

    if-eqz v5, :cond_2e

    new-instance v5, Lcom/vkcoffee/android/attachments/PostAttachment;

    const/4 v6, 0x0

    aget-object v6, v42, v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/attachments/PostAttachment;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    goto/16 :goto_0

    :cond_2e
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 256
    .end local v42    # "post":[Lcom/vkcoffee/android/NewsEntry;
    :cond_2f
    const-string/jumbo v5, "chronicle"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 257
    new-instance v24, Lcom/vkcoffee/android/attachments/ChronicleAttachment;

    const-string/jumbo v5, "id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string/jumbo v5, "owner_id"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v26

    const-string/jumbo v5, "app_name"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v5, "caption"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v5, "package"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const-string/jumbo v5, "label"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "src_blur"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    const-string/jumbo v5, "src_big"

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v24 .. v32}, Lcom/vkcoffee/android/attachments/ChronicleAttachment;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v5, v24

    goto/16 :goto_0
.end method

.method public static parseGeo(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/GeoAttachment;
    .locals 13
    .param p0, "j"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x1

    .line 267
    const-string/jumbo v7, "coordinates"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 268
    .local v11, "coords":Ljava/lang/String;
    const-string/jumbo v7, " "

    invoke-virtual {v11, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "c2":[Ljava/lang/String;
    aget-object v7, v0, v6

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .local v2, "lat":D
    aget-object v7, v0, v1

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 270
    .local v4, "lon":D
    const-string/jumbo v7, "place"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 271
    new-instance v12, Lcom/vkcoffee/android/GeoPlace;

    const-string/jumbo v7, "place"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v12, v7}, Lcom/vkcoffee/android/GeoPlace;-><init>(Lorg/json/JSONObject;)V

    .line 272
    .local v12, "place":Lcom/vkcoffee/android/GeoPlace;
    const/4 v10, 0x0

    .line 273
    .local v10, "style":I
    const-string/jumbo v7, "type"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v8, :pswitch_data_0

    .line 281
    :goto_1
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-object v6, v12, Lcom/vkcoffee/android/GeoPlace;->title:Ljava/lang/String;

    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->address:Ljava/lang/String;

    :goto_2
    iget v8, v12, Lcom/vkcoffee/android/GeoPlace;->id:I

    iget-object v9, v12, Lcom/vkcoffee/android/GeoPlace;->photo:Ljava/lang/String;

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 285
    .end local v12    # "place":Lcom/vkcoffee/android/GeoPlace;
    :goto_3
    return-object v1

    .line 273
    .restart local v12    # "place":Lcom/vkcoffee/android/GeoPlace;
    :sswitch_0
    const-string/jumbo v9, "point"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v8, v6

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "place"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v8, v1

    goto :goto_0

    .line 275
    :pswitch_0
    const-string/jumbo v6, "showmap"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v1, :cond_1

    const/4 v10, 0x3

    .line 276
    :goto_4
    goto :goto_1

    :cond_1
    move v10, v1

    .line 275
    goto :goto_4

    .line 278
    :pswitch_1
    const/4 v10, 0x2

    goto :goto_1

    .line 281
    :cond_2
    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->city:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->country:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, ""

    goto :goto_2

    :cond_3
    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->country:Ljava/lang/String;

    goto :goto_2

    :cond_4
    iget-object v7, v12, Lcom/vkcoffee/android/GeoPlace;->city:Ljava/lang/String;

    goto :goto_2

    .line 283
    .end local v10    # "style":I
    .end local v12    # "place":Lcom/vkcoffee/android/GeoPlace;
    :cond_5
    const/4 v10, 0x0

    .line 285
    .restart local v10    # "style":I
    new-instance v1, Lcom/vkcoffee/android/attachments/GeoAttachment;

    const-string/jumbo v6, "title"

    const-string/jumbo v7, "subtitle"

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vkcoffee/android/attachments/GeoAttachment;-><init>(DDLjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_3

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        0x65cd907 -> :sswitch_1
        0x65e5590 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static reuseView(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 351
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 352
    .local v0, "context":Landroid/content/Context;
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 353
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/vkcoffee/android/utils/ActivityLocal;->put(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 355
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 356
    sget-object v2, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_1
    sget-object v1, Lcom/vkcoffee/android/attachments/Attachment;->reusableViews:Lcom/vkcoffee/android/utils/ActivityLocal;

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/utils/ActivityLocal;->get(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    const-string/jumbo v1, "photo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    .line 360
    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    :cond_2
    const-string/jumbo v1, "doc_thumb"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 363
    check-cast p0, Lcom/vkcoffee/android/DocAttachView;

    .end local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/vkcoffee/android/DocAttachView;->reset()V

    .line 365
    :cond_3
    return-void
.end method

.method public static sort(Ljava/util/List;)V
    .locals 8
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
    .line 368
    .local p0, "atts":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v3, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 370
    .local v0, "a":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/AlbumAttachment;

    if-eqz v7, :cond_0

    .line 371
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 372
    :cond_0
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v7, :cond_1

    .line 373
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_1
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/VideoAttachment;

    if-eqz v7, :cond_2

    .line 375
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 376
    :cond_2
    instance-of v7, v0, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-nez v7, :cond_3

    instance-of v7, v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v7, :cond_4

    .line 377
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 379
    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 382
    .end local v0    # "a":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 383
    invoke-interface {p0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 384
    invoke-interface {p0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    invoke-interface {p0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 386
    invoke-interface {p0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 387
    invoke-interface {p0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 388
    return-void
.end method


# virtual methods
.method public abstract getFullView(Landroid/content/Context;)Landroid/view/View;
.end method

.method public abstract getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x0

    return-object v0
.end method

.method public final serialize(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "os"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p1}, Lcom/vkcoffee/android/utils/Serializer;->get(Ljava/io/DataOutput;)Lcom/vkcoffee/android/utils/Serializer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 57
    return-void
.end method
