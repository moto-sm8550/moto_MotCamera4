.class public final Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
.super Ljava/lang/Object;
.source "ConsPStack.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final EMPTY:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field public final rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->EMPTY:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->size:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->first:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->first:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    .line 8
    iget p1, p2, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->size:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$Itr;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->subList(I)Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack$Itr;-><init>(Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;)V

    return-object v0
.end method

.method public final minus(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->size:I

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->first:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->minus(Ljava/lang/Object;)Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    move-result-object p1

    .line 5
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    if-ne p1, v0, :cond_2

    return-object p0

    .line 6
    :cond_2
    new-instance v0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->first:Ljava/lang/Object;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;-><init>(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;)V

    return-object v0
.end method

.method public final subList(I)Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/reflect/jvm/internal/pcollections/ConsPStack<",
            "TE;>;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->size:I

    if-gt p1, v0, :cond_1

    if-nez p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->rest:Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;->subList(I)Lkotlin/reflect/jvm/internal/pcollections/ConsPStack;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
