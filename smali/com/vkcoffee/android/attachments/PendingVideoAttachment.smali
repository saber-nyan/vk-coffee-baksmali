.class public Lcom/vkcoffee/android/attachments/PendingVideoAttachment;
.super Lcom/vkcoffee/android/attachments/VideoAttachment;
.source "PendingVideoAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/PendingAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PendingVideoAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PendingVideoAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 0
    .param p1, "vf"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 0
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I

    .prologue
    .line 9
    invoke-direct/range {p0 .. p5}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 0
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_image"    # Ljava/lang/String;
    .param p3, "_oid"    # I
    .param p4, "_vid"    # I
    .param p5, "_duration"    # I
    .param p6, "_akey"    # Ljava/lang/String;
    .param p7, "_views"    # I

    .prologue
    .line 13
    invoke-direct/range {p0 .. p7}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V

    .line 14
    return-void
.end method


# virtual methods
.method public getUploadId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingVideoAttachment;->vid:I

    return v0
.end method
