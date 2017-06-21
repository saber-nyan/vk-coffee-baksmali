.class public final enum Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
.super Ljava/lang/Enum;
.source "Segmenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/util/Segmenter$Footer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

.field public static final enum Error:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

.field public static final enum Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

.field public static final enum Message:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    const-string/jumbo v1, "Loading"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    new-instance v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    const-string/jumbo v1, "Error"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Error:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    new-instance v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    const-string/jumbo v1, "Message"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Message:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Loading:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Error:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->Message:Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->$VALUES:[Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->$VALUES:[Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/ui/util/Segmenter$Footer$State;

    return-object v0
.end method
