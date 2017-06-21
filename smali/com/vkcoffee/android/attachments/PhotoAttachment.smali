.class public Lcom/vkcoffee/android/attachments/PhotoAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "PhotoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/ThumbAttachment;
.implements Lcom/vkcoffee/android/attachments/ImageAttachment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;,
        Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageViewTopCrop;,
        Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PhotoAttachment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public aid:I

.field public breakAfter:Z

.field public date:I

.field public descr:Ljava/lang/String;

.field public displayH:I

.field public displayW:I

.field public floating:Z

.field public hasSize:Z

.field public images:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;",
            ">;"
        }
    .end annotation
.end field

.field public lat:D

.field public lon:D

.field public oid:I

.field public photosMode:Z

.field public pid:I

.field public postID:I

.field public ratio:F

.field public srcBig:Ljava/lang/String;

.field public srcThumb:Ljava/lang/String;

.field public thumbType:Ljava/lang/String;

.field public uid:I

.field useSmall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/vkcoffee/android/Photo;

    .prologue
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    .line 106
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 40
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 42
    const-string/jumbo v2, "m"

    iput-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 47
    iput-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    .line 48
    iput-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    .line 50
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->useSmall:Z

    .line 107
    iget v2, p1, Lcom/vkcoffee/android/Photo;->id:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    .line 108
    iget v2, p1, Lcom/vkcoffee/android/Photo;->ownerID:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    .line 109
    iget v2, p1, Lcom/vkcoffee/android/Photo;->albumID:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->aid:I

    .line 110
    iget v2, p1, Lcom/vkcoffee/android/Photo;->userID:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->uid:I

    .line 111
    iget v2, p1, Lcom/vkcoffee/android/Photo;->date:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->date:I

    .line 112
    iget-object v2, p1, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    .line 113
    iget-object v2, p1, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/Photo$Image;

    .line 114
    .local v1, "im":Lcom/vkcoffee/android/Photo$Image;
    new-instance v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>()V

    .line 115
    .local v0, "i":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget v3, v1, Lcom/vkcoffee/android/Photo$Image;->height:I

    iput v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    .line 116
    iget v3, v1, Lcom/vkcoffee/android/Photo$Image;->width:I

    iput v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    .line 117
    iget-object v3, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    .line 118
    iget-char v3, v1, Lcom/vkcoffee/android/Photo$Image;->type:C

    iput-char v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    .line 119
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v5, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 50
    .end local v0    # "i":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v1    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 122
    .local v1, "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lez v2, :cond_2

    iget v2, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lez v2, :cond_2

    .line 123
    iget v2, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    int-to-float v2, v2

    iget v3, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    .line 127
    :goto_2
    iget-object v2, p1, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    iput-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 128
    iget v2, p1, Lcom/vkcoffee/android/Photo;->postID:I

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->postID:I

    .line 129
    iget-wide v2, p1, Lcom/vkcoffee/android/Photo;->lat:D

    iput-wide v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    .line 130
    iget-wide v2, p1, Lcom/vkcoffee/android/Photo;->lon:D

    iput-wide v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    .line 131
    return-void

    .line 125
    :cond_2
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 7
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I

    .prologue
    .line 134
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 16
    .param p1, "thumb"    # Ljava/lang/String;
    .param p2, "big"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_pid"    # I
    .param p5, "_aid"    # I
    .param p6, "_descr"    # Ljava/lang/String;

    .prologue
    .line 138
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/4 v2, 0x0

    new-instance v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v5, 0x6d

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v4, v3, v2

    const/4 v2, 0x1

    new-instance v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    const/16 v5, 0x78

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;-><init>(CLjava/lang/String;II)V

    aput-object v4, v3, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, ""

    const/4 v11, 0x0

    const-wide v12, -0x3f3e6c0000000000L    # -9000.0

    const-wide v14, -0x3f3e6c0000000000L    # -9000.0

    move-object/from16 v2, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v2 .. v15}, Lcom/vkcoffee/android/attachments/PhotoAttachment;-><init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;IDD)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;IIILjava/lang/String;)V
    .locals 4
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "_images":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    const-wide v2, -0x3f3e6c0000000000L    # -9000.0

    .line 86
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 42
    const-string/jumbo v1, "m"

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 47
    iput-wide v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    .line 48
    iput-wide v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    .line 50
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->useSmall:Z

    .line 87
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 88
    iput p3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    .line 89
    iput p2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    .line 90
    iput p4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->aid:I

    .line 91
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    .line 93
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 94
    .local v0, "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget v1, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lez v1, :cond_3

    iget v1, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lez v1, :cond_3

    .line 95
    iget v1, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    int-to-float v1, v1

    iget v2, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    .line 100
    :goto_1
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v1, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    sget-boolean v1, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v3, "y"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "y"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 103
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v2, "m"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 104
    return-void

    .line 50
    .end local v0    # "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 97
    .restart local v0    # "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    :cond_3
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    goto :goto_1

    .line 101
    :cond_4
    const-string/jumbo v1, "x"

    goto :goto_2
.end method

.method public constructor <init>([Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;IIILjava/lang/String;IILjava/lang/String;IDD)V
    .locals 10
    .param p1, "_images"    # [Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .param p2, "_oid"    # I
    .param p3, "_pid"    # I
    .param p4, "_aid"    # I
    .param p5, "_descr"    # Ljava/lang/String;
    .param p6, "_uid"    # I
    .param p7, "_date"    # I
    .param p8, "akey"    # Ljava/lang/String;
    .param p9, "post"    # I
    .param p10, "lat"    # D
    .param p12, "lon"    # D

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 40
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 42
    const-string/jumbo v4, "m"

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 47
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    iput-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    .line 48
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    iput-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    .line 50
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->useSmall:Z

    .line 53
    array-length v5, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v3, p1, v4

    .line 54
    .local v3, "img":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget-object v6, v3, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v8, v3, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 50
    .end local v3    # "img":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 58
    :cond_2
    iput p3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    .line 59
    iput p2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    .line 60
    iput p4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->aid:I

    .line 61
    iput-object p5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    .line 62
    move/from16 v0, p6

    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->uid:I

    .line 63
    move/from16 v0, p7

    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->date:I

    .line 64
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    .line 65
    move/from16 v0, p9

    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->postID:I

    .line 67
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 68
    .local v2, "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget v4, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lez v4, :cond_4

    iget v4, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lez v4, :cond_4

    .line 69
    iget v4, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    int-to-float v4, v4

    iget v5, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    .line 74
    :goto_2
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 75
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    sget v4, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_3

    sget-boolean v4, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v4, :cond_5

    :cond_3
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "y"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "y"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcBig:Ljava/lang/String;

    .line 81
    :goto_4
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v5, "m"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    :goto_5
    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcThumb:Ljava/lang/String;

    .line 82
    move-wide/from16 v0, p10

    iput-wide v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    .line 83
    move-wide/from16 v0, p12

    iput-wide v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    .line 84
    return-void

    .line 71
    :cond_4
    const/high16 v4, -0x40800000    # -1.0f

    iput v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    goto :goto_2

    .line 75
    :cond_5
    const-string/jumbo v4, "x"

    goto :goto_3

    .line 77
    :cond_6
    const-string/jumbo v4, "http://vk.com/images/x_null.gif"

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcBig:Ljava/lang/String;

    goto :goto_4

    .line 81
    :cond_7
    const-string/jumbo v4, "http://vk.com/images/x_null.gif"

    goto :goto_5
.end method

.method private getThumbType(IILjava/util/HashMap;)Ljava/lang/String;
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 352
    .local p3, "imgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 353
    .local v0, "max_s":I
    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    .line 354
    const-string/jumbo v1, "s"

    .line 366
    :goto_0
    return-object v1

    .line 355
    :cond_0
    const/16 v1, 0x82

    if-ge v0, v1, :cond_1

    .line 356
    const-string/jumbo v1, "m"

    goto :goto_0

    .line 357
    :cond_1
    const-string/jumbo v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_2

    const-string/jumbo v1, "o"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_2

    .line 358
    const-string/jumbo v1, "o"

    goto :goto_0

    .line 359
    :cond_2
    const-string/jumbo v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_3

    const-string/jumbo v1, "p"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_3

    .line 360
    const-string/jumbo v1, "p"

    goto :goto_0

    .line 361
    :cond_3
    const-string/jumbo v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_4

    const-string/jumbo v1, "q"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_4

    .line 362
    const-string/jumbo v1, "q"

    goto :goto_0

    .line 363
    :cond_4
    const-string/jumbo v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    if-lt v1, p1, :cond_5

    const-string/jumbo v1, "r"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    if-lt v1, p2, :cond_5

    .line 364
    const-string/jumbo v1, "r"

    goto/16 :goto_0

    .line 366
    :cond_5
    const-string/jumbo v1, "x"

    goto/16 :goto_0
.end method


# virtual methods
.method public clearImage(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 443
    check-cast p1, Landroid/widget/ImageView;

    .end local p1    # "view":Landroid/view/View;
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->photosMode:Z

    if-eqz v0, :cond_0

    const v0, -0xededee

    :goto_0
    invoke-direct {v1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    return-void

    .line 443
    :cond_0
    const v0, -0xd0d0e

    goto :goto_0
.end method

.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    return v0
.end method

.method public getImageURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRatio()F
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->ratio:F

    return v0
.end method

.method public getThumbURL()Ljava/lang/String;
    .locals 10

    .prologue
    .line 393
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v5

    if-nez v5, :cond_1

    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "A|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v8, "p"

    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "p"

    :goto_0
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 414
    :goto_1
    return-object v5

    .line 394
    :cond_0
    const-string/jumbo v5, "m"

    goto :goto_0

    .line 396
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isHighSpeed()Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v6

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {v6, v5}, Lme/grishka/appkit/imageloader/ImageCache;->isInCache(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 397
    :cond_2
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_1

    .line 401
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "p"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 402
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "p"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 403
    .local v2, "p":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 404
    .local v0, "m":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    iget v5, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    int-to-float v5, v5

    iget v6, v2, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    int-to-float v6, v6

    div-float v3, v5, v6

    .line 405
    .local v3, "pr":F
    iget v5, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    int-to-float v5, v5

    iget v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 406
    .local v1, "mr":F
    sub-float v5, v3, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v6, v5

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpg-double v5, v6, v8

    if-gez v5, :cond_4

    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "p"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    goto/16 :goto_1

    .line 410
    .end local v0    # "m":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v1    # "mr":F
    .end local v2    # "p":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v3    # "pr":F
    :cond_5
    iget-object v5, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    const-string/jumbo v6, "m"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget-object v5, v5, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 411
    :catch_0
    move-exception v4

    .line 412
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 414
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "reuse"    # Landroid/view/View;

    .prologue
    const/high16 v3, 0x40400000    # 3.0f

    .line 186
    const-string/jumbo v2, "photo"

    invoke-static {p1, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getReusableView(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    .line 187
    .local v0, "iv":Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;
    const v2, 0x7f020271

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setImageResource(I)V

    .line 188
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setId(I)V

    .line 189
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->hasSize:Z

    if-eqz v2, :cond_4

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 190
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    if-nez v2, :cond_0

    .line 191
    const/16 v2, 0x87

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    .line 193
    :cond_0
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    if-nez v2, :cond_1

    .line 194
    const/16 v2, 0x64

    iput v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    .line 196
    :cond_1
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMinimumHeight(I)V

    .line 197
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMaxHeight(I)V

    .line 198
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMinimumWidth(I)V

    .line 199
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    invoke-virtual {v0, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setMaxWidth(I)V

    .line 200
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    iput v2, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayW:I

    .line 201
    iget v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    iput v2, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->displayH:I

    .line 202
    new-instance v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;-><init>(II)V

    .line 203
    .local v1, "params":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->breakAfter:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->floating:Z

    if-eqz v2, :cond_3

    .line 204
    :cond_2
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->breakAfter:Z

    iput-boolean v2, v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->breakAfter:Z

    .line 205
    iget-boolean v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->floating:Z

    iput-boolean v2, v1, Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;->floating:Z

    .line 207
    :cond_3
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    return-object v0

    .line 189
    .end local v1    # "params":Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    :cond_4
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 383
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    return v0
.end method

.method public getWidth(C)I
    .locals 3
    .param p1, "sz"    # C

    .prologue
    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    iget v0, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    return v0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 6
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 159
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 160
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 161
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 162
    .local v1, "k":Ljava/lang/String;
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 163
    .local v0, "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 164
    iget-object v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 165
    iget v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 166
    iget v4, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    invoke-virtual {p1, v4}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    goto :goto_0

    .line 168
    .end local v0    # "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v1    # "k":Ljava/lang/String;
    :cond_0
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 169
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 170
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->aid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 171
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 172
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->uid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 173
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->date:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 174
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 175
    iget v3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->postID:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 176
    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    invoke-virtual {p1, v4, v5}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 177
    iget-wide v4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    invoke-virtual {p1, v4, v5}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 178
    return-void
.end method

.method public setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "img"    # Landroid/graphics/Bitmap;
    .param p3, "fromCache"    # Z

    .prologue
    .line 428
    if-nez p1, :cond_1

    .line 439
    .end local p1    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    move-object v0, p1

    .line 431
    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    instance-of v0, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    if-eqz v0, :cond_0

    .line 433
    if-nez p3, :cond_2

    .line 434
    check-cast p1, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->animateAlpha()V

    goto :goto_0

    .line 436
    .restart local p1    # "view":Landroid/view/View;
    :cond_2
    check-cast p1, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/vkcoffee/android/attachments/PhotoAttachment$FixedSizeImageView;->dontAnimate()V

    goto :goto_0
.end method

.method public setViewSize(FFZZ)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "breakAfter"    # Z
    .param p4, "floating"    # Z

    .prologue
    .line 372
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    .line 373
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    .line 374
    iget v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayW:I

    iget v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->displayH:I

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getThumbType(IILjava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->thumbType:Ljava/lang/String;

    .line 376
    iput-boolean p3, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->breakAfter:Z

    .line 377
    iput-boolean p4, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->floating:Z

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->hasSize:Z

    .line 379
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method
