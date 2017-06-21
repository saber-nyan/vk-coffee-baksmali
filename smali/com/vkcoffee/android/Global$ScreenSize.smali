.class public final enum Lcom/vkcoffee/android/Global$ScreenSize;
.super Ljava/lang/Enum;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenSize"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vkcoffee/android/Global$ScreenSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/vkcoffee/android/Global$ScreenSize;

.field public static final enum large:Lcom/vkcoffee/android/Global$ScreenSize;

.field public static final enum normal:Lcom/vkcoffee/android/Global$ScreenSize;

.field public static final enum xlarge:Lcom/vkcoffee/android/Global$ScreenSize;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/vkcoffee/android/Global$ScreenSize;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/Global$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/Global$ScreenSize;->normal:Lcom/vkcoffee/android/Global$ScreenSize;

    .line 61
    new-instance v0, Lcom/vkcoffee/android/Global$ScreenSize;

    const-string v1, "large"

    invoke-direct {v0, v1, v3}, Lcom/vkcoffee/android/Global$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/Global$ScreenSize;->large:Lcom/vkcoffee/android/Global$ScreenSize;

    .line 62
    new-instance v0, Lcom/vkcoffee/android/Global$ScreenSize;

    const-string v1, "xlarge"

    invoke-direct {v0, v1, v4}, Lcom/vkcoffee/android/Global$ScreenSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vkcoffee/android/Global$ScreenSize;->xlarge:Lcom/vkcoffee/android/Global$ScreenSize;

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vkcoffee/android/Global$ScreenSize;

    sget-object v1, Lcom/vkcoffee/android/Global$ScreenSize;->normal:Lcom/vkcoffee/android/Global$ScreenSize;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vkcoffee/android/Global$ScreenSize;->large:Lcom/vkcoffee/android/Global$ScreenSize;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vkcoffee/android/Global$ScreenSize;->xlarge:Lcom/vkcoffee/android/Global$ScreenSize;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vkcoffee/android/Global$ScreenSize;->ENUM$VALUES:[Lcom/vkcoffee/android/Global$ScreenSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vkcoffee/android/Global$ScreenSize;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/vkcoffee/android/Global$ScreenSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Global$ScreenSize;

    return-object v0
.end method

.method public static values()[Lcom/vkcoffee/android/Global$ScreenSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/vkcoffee/android/Global$ScreenSize;->ENUM$VALUES:[Lcom/vkcoffee/android/Global$ScreenSize;

    array-length v1, v0

    new-array v2, v1, [Lcom/vkcoffee/android/Global$ScreenSize;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
