.class final enum Lcom/vkcoffee/android/utils/L$LogType;
.super Ljava/lang/Enum;
.source "L.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/utils/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/utils/L$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/utils/L$LogType;

.field public static final enum d:Lcom/vkcoffee/android/utils/L$LogType;

.field public static final enum e:Lcom/vkcoffee/android/utils/L$LogType;

.field public static final enum i:Lcom/vkcoffee/android/utils/L$LogType;

.field public static final enum v:Lcom/vkcoffee/android/utils/L$LogType;

.field public static final enum w:Lcom/vkcoffee/android/utils/L$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/vkcoffee/android/utils/L$LogType;

    const-string/jumbo v1, "v"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/utils/L$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->v:Lcom/vkcoffee/android/utils/L$LogType;

    new-instance v0, Lcom/vkcoffee/android/utils/L$LogType;

    const-string/jumbo v1, "d"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/utils/L$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->d:Lcom/vkcoffee/android/utils/L$LogType;

    new-instance v0, Lcom/vkcoffee/android/utils/L$LogType;

    const-string/jumbo v1, "i"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/utils/L$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->i:Lcom/vkcoffee/android/utils/L$LogType;

    new-instance v0, Lcom/vkcoffee/android/utils/L$LogType;

    const-string/jumbo v1, "w"

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/utils/L$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->w:Lcom/vkcoffee/android/utils/L$LogType;

    new-instance v0, Lcom/vkcoffee/android/utils/L$LogType;

    const-string/jumbo v1, "e"

    invoke-direct {v0, v1, v6}, Lcom/vkcoffee/android/utils/L$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->e:Lcom/vkcoffee/android/utils/L$LogType;

    .line 13
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vkcoffee/android/utils/L$LogType;

    sget-object v1, Lcom/vkcoffee/android/utils/L$LogType;->v:Lcom/vkcoffee/android/utils/L$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/utils/L$LogType;->d:Lcom/vkcoffee/android/utils/L$LogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/utils/L$LogType;->i:Lcom/vkcoffee/android/utils/L$LogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/utils/L$LogType;->w:Lcom/vkcoffee/android/utils/L$LogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vkcoffee/android/utils/L$LogType;->e:Lcom/vkcoffee/android/utils/L$LogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vkcoffee/android/utils/L$LogType;->$VALUES:[Lcom/vkcoffee/android/utils/L$LogType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/utils/L$LogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/vkcoffee/android/utils/L$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/utils/L$LogType;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/utils/L$LogType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/vkcoffee/android/utils/L$LogType;->$VALUES:[Lcom/vkcoffee/android/utils/L$LogType;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/utils/L$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/utils/L$LogType;

    return-object v0
.end method
