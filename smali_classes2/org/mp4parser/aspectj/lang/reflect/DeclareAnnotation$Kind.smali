.class public final enum Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;
.super Ljava/lang/Enum;
.source "DeclareAnnotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field public static final enum Constructor:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field public static final enum Field:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field public static final enum Method:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

.field public static final enum Type:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    const-string/jumbo v1, "Field"

    invoke-direct {v0, v1, v2}, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Field:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    new-instance v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    const-string/jumbo v1, "Method"

    invoke-direct {v0, v1, v3}, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Method:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    new-instance v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    const-string/jumbo v1, "Constructor"

    invoke-direct {v0, v1, v4}, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Constructor:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    new-instance v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    const-string/jumbo v1, "Type"

    invoke-direct {v0, v1, v5}, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    sget-object v1, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Field:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    aput-object v1, v0, v2

    sget-object v1, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Method:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Constructor:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->Type:Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    aput-object v1, v0, v5

    sput-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->$VALUES:[Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

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

.method public static valueOf(Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    const-class v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    return-object v0
.end method

.method public static values()[Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->$VALUES:[Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    invoke-virtual {v0}, [Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation$Kind;

    return-object v0
.end method
