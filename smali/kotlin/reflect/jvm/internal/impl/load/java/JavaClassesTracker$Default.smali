.class public final Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;
.super Ljava/lang/Object;
.source "JavaClassesTracker.kt"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Default"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/load/java/JavaClassesTracker$Default;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportClass(Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassDescriptor;)V
    .locals 0

    return-void
.end method
