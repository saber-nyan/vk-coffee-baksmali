.class public abstract enum Lorg/acra/sender/HttpSender$Type;
.super Ljava/lang/Enum;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/sender/HttpSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/acra/sender/HttpSender$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/sender/HttpSender$Type;

.field public static final enum FORM:Lorg/acra/sender/HttpSender$Type;

.field public static final enum JSON:Lorg/acra/sender/HttpSender$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lorg/acra/sender/HttpSender$Type$1;

    const-string/jumbo v1, "FORM"

    invoke-direct {v0, v1, v2}, Lorg/acra/sender/HttpSender$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    .line 101
    new-instance v0, Lorg/acra/sender/HttpSender$Type$2;

    const-string/jumbo v1, "JSON"

    invoke-direct {v0, v1, v3}, Lorg/acra/sender/HttpSender$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/acra/sender/HttpSender$Type;

    sget-object v1, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/acra/sender/HttpSender$Type;->$VALUES:[Lorg/acra/sender/HttpSender$Type;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/acra/sender/HttpSender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/acra/sender/HttpSender$1;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lorg/acra/sender/HttpSender$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/sender/HttpSender$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    const-class v0, Lorg/acra/sender/HttpSender$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method

.method public static values()[Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->$VALUES:[Lorg/acra/sender/HttpSender$Type;

    invoke-virtual {v0}, [Lorg/acra/sender/HttpSender$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/sender/HttpSender$Type;

    return-object v0
.end method


# virtual methods
.method public abstract getContentType()Ljava/lang/String;
.end method
