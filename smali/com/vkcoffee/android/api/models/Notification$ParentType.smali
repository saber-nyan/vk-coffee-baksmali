.class public final enum Lcom/vkcoffee/android/api/models/Notification$ParentType;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/api/models/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification$ParentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Market:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

.field public static final enum Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 172
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Post"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 173
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Photo"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 174
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Video"

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 175
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Comment"

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 176
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Topic"

    invoke-direct {v0, v1, v7}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 177
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "Market"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Market:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 178
    new-instance v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    const-string/jumbo v1, "None"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/models/Notification$ParentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    .line 171
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/vkcoffee/android/api/models/Notification$ParentType;

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Post:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Photo:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Video:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Comment:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Topic:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$ParentType;->Market:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vkcoffee/android/api/models/Notification$ParentType;->None:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->$VALUES:[Lcom/vkcoffee/android/api/models/Notification$ParentType;

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
    .line 171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/api/models/Notification$ParentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    const-class v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/api/models/Notification$ParentType;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/vkcoffee/android/api/models/Notification$ParentType;->$VALUES:[Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/api/models/Notification$ParentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/api/models/Notification$ParentType;

    return-object v0
.end method
