.class public interface abstract Lorg/mp4parser/aspectj/lang/reflect/AjType;
.super Ljava/lang/Object;
.source "AjType.java"

# interfaces
.implements Ljava/lang/reflect/Type;
.implements Ljava/lang/reflect/AnnotatedElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/reflect/Type;",
        "Ljava/lang/reflect/AnnotatedElement;"
    }
.end annotation


# virtual methods
.method public abstract getAdvice(Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/Advice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mp4parser/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation
.end method

.method public varargs abstract getAdvice([Lorg/mp4parser/aspectj/lang/reflect/AdviceKind;)[Lorg/mp4parser/aspectj/lang/reflect/Advice;
.end method

.method public abstract getAjTypes()[Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs abstract getConstructor([Lorg/mp4parser/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getConstructors()[Ljava/lang/reflect/Constructor;
.end method

.method public abstract getDeclareAnnotations()[Lorg/mp4parser/aspectj/lang/reflect/DeclareAnnotation;
.end method

.method public abstract getDeclareErrorOrWarnings()[Lorg/mp4parser/aspectj/lang/reflect/DeclareErrorOrWarning;
.end method

.method public abstract getDeclareParents()[Lorg/mp4parser/aspectj/lang/reflect/DeclareParents;
.end method

.method public abstract getDeclarePrecedence()[Lorg/mp4parser/aspectj/lang/reflect/DeclarePrecedence;
.end method

.method public abstract getDeclareSofts()[Lorg/mp4parser/aspectj/lang/reflect/DeclareSoft;
.end method

.method public abstract getDeclaredAdvice(Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/Advice;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mp4parser/aspectj/lang/reflect/NoSuchAdviceException;
        }
    .end annotation
.end method

.method public varargs abstract getDeclaredAdvice([Lorg/mp4parser/aspectj/lang/reflect/AdviceKind;)[Lorg/mp4parser/aspectj/lang/reflect/Advice;
.end method

.method public abstract getDeclaredAjTypes()[Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public varargs abstract getDeclaredConstructor([Lorg/mp4parser/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Constructor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getDeclaredConstructors()[Ljava/lang/reflect/Constructor;
.end method

.method public abstract getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public abstract getDeclaredFields()[Ljava/lang/reflect/Field;
.end method

.method public varargs abstract getDeclaredITDConstructor(Lorg/mp4parser/aspectj/lang/reflect/AjType;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getDeclaredITDConstructors()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;
.end method

.method public abstract getDeclaredITDField(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public abstract getDeclaredITDFields()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;
.end method

.method public varargs abstract getDeclaredITDMethod(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/reflect/AjType;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getDeclaredITDMethods()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;
.end method

.method public varargs abstract getDeclaredMethod(Ljava/lang/String;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods()[Ljava/lang/reflect/Method;
.end method

.method public abstract getDeclaredPointcut(Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/Pointcut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mp4parser/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation
.end method

.method public abstract getDeclaredPointcuts()[Lorg/mp4parser/aspectj/lang/reflect/Pointcut;
.end method

.method public abstract getDeclaringType()Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getEnclosingConstructor()Ljava/lang/reflect/Constructor;
.end method

.method public abstract getEnclosingMethod()Ljava/lang/reflect/Method;
.end method

.method public abstract getEnclosingType()Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getEnumConstants()[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation
.end method

.method public abstract getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public abstract getFields()[Ljava/lang/reflect/Field;
.end method

.method public abstract getGenericSupertype()Ljava/lang/reflect/Type;
.end method

.method public varargs abstract getITDConstructor(Lorg/mp4parser/aspectj/lang/reflect/AjType;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getITDConstructors()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeConstructorDeclaration;
.end method

.method public abstract getITDField(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation
.end method

.method public abstract getITDFields()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeFieldDeclaration;
.end method

.method public varargs abstract getITDMethod(Ljava/lang/String;Lorg/mp4parser/aspectj/lang/reflect/AjType;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getITDMethods()[Lorg/mp4parser/aspectj/lang/reflect/InterTypeMethodDeclaration;
.end method

.method public abstract getInterfaces()[Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getJavaClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end method

.method public varargs abstract getMethod(Ljava/lang/String;[Lorg/mp4parser/aspectj/lang/reflect/AjType;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation
.end method

.method public abstract getMethods()[Ljava/lang/reflect/Method;
.end method

.method public abstract getModifiers()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackage()Ljava/lang/Package;
.end method

.method public abstract getPerClause()Lorg/mp4parser/aspectj/lang/reflect/PerClause;
.end method

.method public abstract getPointcut(Ljava/lang/String;)Lorg/mp4parser/aspectj/lang/reflect/Pointcut;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/mp4parser/aspectj/lang/reflect/NoSuchPointcutException;
        }
    .end annotation
.end method

.method public abstract getPointcuts()[Lorg/mp4parser/aspectj/lang/reflect/Pointcut;
.end method

.method public abstract getSupertype()Lorg/mp4parser/aspectj/lang/reflect/AjType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/mp4parser/aspectj/lang/reflect/AjType",
            "<*>;"
        }
    .end annotation
.end method

.method public abstract getTypeParameters()[Ljava/lang/reflect/TypeVariable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/reflect/TypeVariable",
            "<",
            "Ljava/lang/Class",
            "<TT;>;>;"
        }
    .end annotation
.end method

.method public abstract isArray()Z
.end method

.method public abstract isAspect()Z
.end method

.method public abstract isEnum()Z
.end method

.method public abstract isInstance(Ljava/lang/Object;)Z
.end method

.method public abstract isInterface()Z
.end method

.method public abstract isLocalClass()Z
.end method

.method public abstract isMemberAspect()Z
.end method

.method public abstract isMemberClass()Z
.end method

.method public abstract isPrimitive()Z
.end method

.method public abstract isPrivileged()Z
.end method
