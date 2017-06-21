.class public Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;
.super Lcom/vkcoffee/android/attachments/DocumentAttachment;
.source "PendingDocumentAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/PendingAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 0
    .param p1, "parcel"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;)V
    .locals 12
    .param p1, "_title"    # Ljava/lang/String;
    .param p2, "_url"    # Ljava/lang/String;
    .param p3, "_size"    # I
    .param p4, "_thumb"    # Ljava/lang/String;
    .param p5, "_oid"    # I
    .param p6, "_did"    # I
    .param p7, "ext"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string/jumbo v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v11}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public getUploadId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingDocumentAttachment;->did:I

    return v0
.end method
