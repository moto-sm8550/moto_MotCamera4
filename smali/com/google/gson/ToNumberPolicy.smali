.class public abstract enum Lcom/google/gson/ToNumberPolicy;
.super Ljava/lang/Enum;
.source "ToNumberPolicy.java"

# interfaces
.implements Lcom/google/gson/ToNumberStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/gson/ToNumberPolicy;",
        ">;",
        "Lcom/google/gson/ToNumberStrategy;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/gson/ToNumberPolicy;

.field public static final enum BIG_DECIMAL:Lcom/google/gson/ToNumberPolicy$4;

.field public static final enum DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

.field public static final enum LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

.field public static final enum LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy$3;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/gson/ToNumberPolicy$1;

    invoke-direct {v0}, Lcom/google/gson/ToNumberPolicy$1;-><init>()V

    sput-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy$1;

    .line 2
    new-instance v1, Lcom/google/gson/ToNumberPolicy$2;

    const/4 v2, 0x1

    invoke-direct {v1}, Lcom/google/gson/ToNumberPolicy$2;-><init>()V

    sput-object v1, Lcom/google/gson/ToNumberPolicy;->LAZILY_PARSED_NUMBER:Lcom/google/gson/ToNumberPolicy$2;

    .line 3
    new-instance v3, Lcom/google/gson/ToNumberPolicy$3;

    const/4 v4, 0x2

    invoke-direct {v3}, Lcom/google/gson/ToNumberPolicy$3;-><init>()V

    sput-object v3, Lcom/google/gson/ToNumberPolicy;->LONG_OR_DOUBLE:Lcom/google/gson/ToNumberPolicy$3;

    .line 4
    new-instance v5, Lcom/google/gson/ToNumberPolicy$4;

    const/4 v6, 0x3

    invoke-direct {v5}, Lcom/google/gson/ToNumberPolicy$4;-><init>()V

    sput-object v5, Lcom/google/gson/ToNumberPolicy;->BIG_DECIMAL:Lcom/google/gson/ToNumberPolicy$4;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/gson/ToNumberPolicy;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    aput-object v1, v7, v2

    aput-object v3, v7, v4

    aput-object v5, v7, v6

    .line 5
    sput-object v7, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/google/gson/ToNumberPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gson/ToNumberPolicy;
    .locals 1

    const-class v0, Lcom/google/gson/ToNumberPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gson/ToNumberPolicy;

    return-object p0
.end method

.method public static values()[Lcom/google/gson/ToNumberPolicy;
    .locals 1

    sget-object v0, Lcom/google/gson/ToNumberPolicy;->$VALUES:[Lcom/google/gson/ToNumberPolicy;

    invoke-virtual {v0}, [Lcom/google/gson/ToNumberPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gson/ToNumberPolicy;

    return-object v0
.end method
