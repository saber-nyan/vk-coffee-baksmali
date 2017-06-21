.class public final enum Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;
.super Ljava/lang/Enum;
.source "ChatLinkAttachmentHistoryFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

.field public static final enum link:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

.field public static final enum market:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    const-string/jumbo v1, "link"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->link:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    new-instance v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    const-string/jumbo v1, "market"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->market:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->link:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->market:Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->$VALUES:[Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->$VALUES:[Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/fragments/messages/ChatLinkAttachmentHistoryFragment$Type;

    return-object v0
.end method
