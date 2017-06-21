.class public final enum Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
.super Ljava/lang/Enum;
.source "MessageStatusDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DrawState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

.field public static final enum error:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

.field public static final enum haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

.field public static final enum sending:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

.field public static final enum sent:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const-string/jumbo v1, "sending"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sending:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const-string/jumbo v1, "sent"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sent:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const-string/jumbo v1, "haveBeenRed"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    new-instance v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    const-string/jumbo v1, "error"

    invoke-direct {v0, v1, v5}, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->error:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sending:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->sent:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->haveBeenRed:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->error:Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->$VALUES:[Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->$VALUES:[Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    invoke-virtual {v0}, [Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/ui/drawables/MessageStatusDrawable$DrawState;

    return-object v0
.end method
