.class final enum Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
.super Ljava/lang/Enum;
.source "ChatMessageHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum fwdIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum giftIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum messageIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum messageInText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum serviceWithoutImage:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

.field public static final enum unreadSeparator:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;


# instance fields
.field public canTextSizeChange:Z

.field public final res:I

.field public final viewTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 92
    new-instance v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v1, "service"

    const v3, 0x7f0300dc

    const v4, 0x7f10003f

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 93
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "serviceWithoutImage"

    const v6, 0x7f0300dd

    const v7, 0x7f100040

    move v5, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->serviceWithoutImage:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 94
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "unreadSeparator"

    const v6, 0x7f03005d

    const v7, 0x7f100042

    move v5, v10

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->unreadSeparator:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 95
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "giftIn"

    const v6, 0x7f0300d4

    const v7, 0x7f100039

    move v5, v11

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 96
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "giftOut"

    const v6, 0x7f0300d5

    const v7, 0x7f10003a

    move v5, v12

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 97
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "fwdIn"

    const/4 v5, 0x5

    const v6, 0x7f0300d8

    const v7, 0x7f100037

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 98
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "fwdOut"

    const/4 v5, 0x6

    const v6, 0x7f0300db

    const v7, 0x7f100038

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 99
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "messageIn"

    const/4 v5, 0x7

    const v6, 0x7f0300d6

    const v7, 0x7f10003b

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 100
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "messageOut"

    const/16 v5, 0x8

    const v6, 0x7f0300d9

    const v7, 0x7f10003d

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 101
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "messageInText"

    const/16 v5, 0x9

    const v6, 0x7f0300d7

    const v7, 0x7f10003c

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageInText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 102
    new-instance v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    const-string v4, "messageOutText"

    const/16 v5, 0xa

    const v6, 0x7f0300da

    const v7, 0x7f10003e

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;-><init>(Ljava/lang/String;IIIZ)V

    sput-object v3, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    .line 91
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->service:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->serviceWithoutImage:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->unreadSeparator:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->giftOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->fwdOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageIn:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOut:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageInText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->messageOutText:Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ENUM$VALUES:[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIZ)V
    .locals 0
    .param p3, "res"    # I
    .param p4, "viewTypeId"    # I
    .param p5, "canTextSizeChange"    # Z

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 109
    iput p3, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->res:I

    .line 110
    iput p4, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    .line 111
    iput-boolean p5, p0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->canTextSizeChange:Z

    .line 112
    return-void
.end method

.method public static getByViewTypeId(I)Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    .locals 5
    .param p0, "viewTypeId"    # I

    .prologue
    .line 115
    invoke-static {}, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->values()[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "viewTypeId is incorrect"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :cond_0
    aget-object v0, v2, v1

    .line 116
    .local v0, "viewType":Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    iget v4, v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->viewTypeId:I

    if-ne v4, p0, :cond_1

    .line 117
    return-object v0

    .line 115
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;->ENUM$VALUES:[Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    array-length v1, v0

    new-array v2, v1, [Lcom/vkcoffee/android/ui/holder/messages/ChatMessageHolder$ViewType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
