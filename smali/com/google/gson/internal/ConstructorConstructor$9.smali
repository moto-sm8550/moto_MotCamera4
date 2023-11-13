.class public final Lcom/google/gson/internal/ConstructorConstructor$9;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Landroidx/window/layout/WindowMetricsCalculator;
.implements Lcom/google/gson/internal/ObjectConstructor;


# static fields
.field public static final INSTANCE:Lcom/google/gson/internal/ConstructorConstructor$9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$9;

    invoke-direct {v0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>()V

    sput-object v0, Lcom/google/gson/internal/ConstructorConstructor$9;->INSTANCE:Lcom/google/gson/internal/ConstructorConstructor$9;

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

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method
