.class public Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;
.super Lcom/vkcoffee/android/attachments/GraffitiAttachment;
.source "PendingGraffitiAttachment.java"

# interfaces
.implements Lcom/vkcoffee/android/attachments/PendingAttachment;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "ownerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "access_key"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct/range {p0 .. p6}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(IILjava/lang/String;IILjava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 0
    .param p1, "parcel"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(Lcom/vkcoffee/android/utils/Serializer;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getUploadId()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/vkcoffee/android/attachments/PendingGraffitiAttachment;->id:I

    return v0
.end method
