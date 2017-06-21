.class public final enum Lru/mail/android/mytracker/enums/CriterionSend;
.super Ljava/lang/Enum;
.source "CriterionSend.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lru/mail/android/mytracker/enums/CriterionSend;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lru/mail/android/mytracker/enums/CriterionSend;

.field public static final enum EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

.field public static final enum MAJOR_EVENT:Lru/mail/android/mytracker/enums/CriterionSend;

.field public static final enum NOT_SEND:Lru/mail/android/mytracker/enums/CriterionSend;

.field public static final enum TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lru/mail/android/mytracker/enums/CriterionSend;

    const-string/jumbo v1, "MAJOR_EVENT"

    invoke-direct {v0, v1, v2}, Lru/mail/android/mytracker/enums/CriterionSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->MAJOR_EVENT:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 12
    new-instance v0, Lru/mail/android/mytracker/enums/CriterionSend;

    const-string/jumbo v1, "EVENTS_COUNT"

    invoke-direct {v0, v1, v3}, Lru/mail/android/mytracker/enums/CriterionSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 13
    new-instance v0, Lru/mail/android/mytracker/enums/CriterionSend;

    const-string/jumbo v1, "TIME_INTERVAL"

    invoke-direct {v0, v1, v4}, Lru/mail/android/mytracker/enums/CriterionSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 14
    new-instance v0, Lru/mail/android/mytracker/enums/CriterionSend;

    const-string/jumbo v1, "NOT_SEND"

    invoke-direct {v0, v1, v5}, Lru/mail/android/mytracker/enums/CriterionSend;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->NOT_SEND:Lru/mail/android/mytracker/enums/CriterionSend;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lru/mail/android/mytracker/enums/CriterionSend;

    sget-object v1, Lru/mail/android/mytracker/enums/CriterionSend;->MAJOR_EVENT:Lru/mail/android/mytracker/enums/CriterionSend;

    aput-object v1, v0, v2

    sget-object v1, Lru/mail/android/mytracker/enums/CriterionSend;->EVENTS_COUNT:Lru/mail/android/mytracker/enums/CriterionSend;

    aput-object v1, v0, v3

    sget-object v1, Lru/mail/android/mytracker/enums/CriterionSend;->TIME_INTERVAL:Lru/mail/android/mytracker/enums/CriterionSend;

    aput-object v1, v0, v4

    sget-object v1, Lru/mail/android/mytracker/enums/CriterionSend;->NOT_SEND:Lru/mail/android/mytracker/enums/CriterionSend;

    aput-object v1, v0, v5

    sput-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->$VALUES:[Lru/mail/android/mytracker/enums/CriterionSend;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lru/mail/android/mytracker/enums/CriterionSend;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lru/mail/android/mytracker/enums/CriterionSend;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lru/mail/android/mytracker/enums/CriterionSend;

    return-object v0
.end method

.method public static values()[Lru/mail/android/mytracker/enums/CriterionSend;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lru/mail/android/mytracker/enums/CriterionSend;->$VALUES:[Lru/mail/android/mytracker/enums/CriterionSend;

    invoke-virtual {v0}, [Lru/mail/android/mytracker/enums/CriterionSend;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lru/mail/android/mytracker/enums/CriterionSend;

    return-object v0
.end method
