.class public final Landroidx/window/layout/EmptyDecorator;
.super Ljava/lang/Object;
.source "WindowInfoTracker.kt"

# interfaces
.implements Lcom/google/gson/internal/ObjectConstructor;
.implements Lkotlin/reflect/jvm/internal/impl/load/java/JavaModuleAnnotationsProvider;


# static fields
.field public static final INSTANCE:Landroidx/window/layout/EmptyDecorator;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/window/layout/EmptyDecorator;

    invoke-direct {v0}, Landroidx/window/layout/EmptyDecorator;-><init>()V

    sput-object v0, Landroidx/window/layout/EmptyDecorator;->INSTANCE:Landroidx/window/layout/EmptyDecorator;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public construct()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method public getAnnotationsForModuleOwnerOfClass(Lkotlin/reflect/jvm/internal/impl/name/ClassId;)V
    .locals 0

    return-void
.end method
