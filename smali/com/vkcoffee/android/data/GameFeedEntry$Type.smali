.class public final enum Lcom/vkcoffee/android/data/GameFeedEntry$Type;
.super Ljava/lang/Enum;
.source "GameFeedEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/data/GameFeedEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/data/GameFeedEntry$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/data/GameFeedEntry$Type;

.field public static final enum achievement:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

.field public static final enum install:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

.field public static final enum level:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

.field public static final enum score:Lcom/vkcoffee/android/data/GameFeedEntry$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    const-string/jumbo v1, "install"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->install:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    new-instance v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    const-string/jumbo v1, "level"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->level:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    new-instance v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    const-string/jumbo v1, "score"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->score:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    new-instance v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    const-string/jumbo v1, "achievement"

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/data/GameFeedEntry$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->achievement:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    sget-object v1, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->install:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->level:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->score:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->achievement:Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->$VALUES:[Lcom/vkcoffee/android/data/GameFeedEntry$Type;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/data/GameFeedEntry$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/data/GameFeedEntry$Type;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/vkcoffee/android/data/GameFeedEntry$Type;->$VALUES:[Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/data/GameFeedEntry$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/data/GameFeedEntry$Type;

    return-object v0
.end method
