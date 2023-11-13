.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;,
        Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
    }
.end annotation


# instance fields
.field public final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

.field public final excluder:Lcom/google/gson/internal/Excluder;

.field public final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field public final jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 3
    iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 4
    iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 5
    iput-object p4, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    return-void
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/reflect/TypeToken<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v1, p2

    .line 1
    const-class v12, Ljava/lang/Object;

    iget-object v2, v1, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    invoke-virtual {v12, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 3
    :cond_0
    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v3, v1}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v13

    .line 4
    new-instance v14, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 5
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v27, v13

    move-object/from16 v21, v14

    goto/16 :goto_b

    .line 7
    :cond_2
    iget-object v10, v1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    move-object v9, v1

    move-object v8, v2

    :goto_0
    if-eq v8, v12, :cond_1

    .line 8
    invoke-virtual {v8}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v7

    .line 9
    array-length v6, v7

    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v6, :cond_f

    aget-object v4, v7, v5

    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v3

    .line 11
    invoke-virtual {v0, v4, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v3, :cond_3

    if-nez v16, :cond_3

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v26, v7

    move-object/from16 p2, v8

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v21, v14

    move-object v13, v9

    move-object v14, v10

    goto/16 :goto_a

    .line 12
    :cond_3
    :try_start_0
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    iget-object v1, v9, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 14
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    .line 15
    const-class v1, Lcom/google/gson/annotations/SerializedName;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/SerializedName;

    if-nez v1, :cond_4

    .line 16
    iget-object v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v1, v4}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move/from16 p2, v3

    move/from16 v17, v5

    goto :goto_2

    :cond_4
    move/from16 p2, v3

    .line 18
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;

    move-result-object v3

    .line 19
    invoke-interface {v1}, Lcom/google/gson/annotations/SerializedName;->alternate()[Ljava/lang/String;

    move-result-object v1

    move/from16 v17, v5

    .line 20
    array-length v5, v1

    if-nez v5, :cond_5

    .line 21
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_2
    const/4 v3, 0x1

    move/from16 v19, v3

    move/from16 v18, v6

    move-object v6, v1

    goto :goto_4

    .line 22
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    move/from16 v18, v6

    array-length v6, v1

    const/16 v19, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    array-length v3, v1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    move/from16 v20, v3

    aget-object v3, v1, v6

    .line 25
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v20

    goto :goto_3

    :cond_6
    move-object v6, v5

    .line 26
    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v1, 0x0

    const/4 v3, 0x0

    move/from16 v20, p2

    move/from16 v31, v3

    move-object v3, v1

    move/from16 v1, v31

    :goto_5
    if-ge v1, v5, :cond_d

    .line 27
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v22, v12

    move-object/from16 v12, v21

    check-cast v12, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/16 v20, 0x0

    :cond_7
    move-object/from16 v21, v9

    .line 28
    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v9, v2}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    move/from16 p2, v1

    .line 29
    iget-object v1, v9, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    move-object/from16 v23, v2

    .line 30
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_8

    move/from16 v24, v19

    goto :goto_6

    :cond_8
    const/4 v1, 0x0

    move/from16 v24, v1

    .line 31
    :goto_6
    const-class v1, Lcom/google/gson/annotations/JsonAdapter;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/google/gson/annotations/JsonAdapter;

    if-eqz v1, :cond_9

    .line 32
    iget-object v2, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->jsonAdapterFactory:Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v2, v3, v11, v9, v1}, Lcom/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;->getTypeAdapter(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Lcom/google/gson/annotations/JsonAdapter;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    goto :goto_7

    :cond_9
    move-object/from16 v25, v3

    const/4 v1, 0x0

    :goto_7
    if-eqz v1, :cond_a

    move/from16 v26, v19

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    move/from16 v26, v2

    :goto_8
    if-nez v1, :cond_b

    .line 33
    invoke-virtual {v11, v9}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    :cond_b
    move-object/from16 v27, v1

    .line 34
    new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    move/from16 v28, p2

    move-object v1, v3

    move-object v2, v12

    move-object v11, v3

    move-object/from16 v0, v25

    move/from16 v3, v20

    move-object/from16 v25, v4

    move/from16 v4, v16

    move/from16 v29, v5

    move-object/from16 v5, v25

    move-object/from16 v30, v6

    move/from16 v6, v26

    move-object/from16 v26, v7

    move-object/from16 v7, v27

    move-object/from16 p2, v8

    move-object/from16 v8, p1

    move-object/from16 v27, v13

    move-object/from16 v13, v21

    move-object/from16 v21, v14

    move-object v14, v10

    move/from16 v10, v24

    invoke-direct/range {v1 .. v10}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLcom/google/gson/TypeAdapter;Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Z)V

    .line 35
    invoke-interface {v15, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    if-nez v0, :cond_c

    move-object v3, v1

    goto :goto_9

    :cond_c
    move-object v3, v0

    :goto_9
    add-int/lit8 v1, v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v8, p2

    move-object v9, v13

    move-object v10, v14

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v2, v23

    move-object/from16 v4, v25

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    move/from16 v5, v29

    move-object/from16 v6, v30

    goto/16 :goto_5

    :cond_d
    move-object v0, v3

    move-object/from16 v26, v7

    move-object/from16 p2, v8

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v21, v14

    move-object v13, v9

    move-object v14, v10

    const/4 v1, 0x0

    if-nez v0, :cond_e

    :goto_a
    add-int/lit8 v5, v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v8, p2

    move-object v9, v13

    move-object v10, v14

    move/from16 v6, v18

    move-object/from16 v14, v21

    move-object/from16 v12, v22

    move-object/from16 v7, v26

    move-object/from16 v13, v27

    goto/16 :goto_1

    .line 36
    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " declares multiple JSON fields named "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v0

    move-object/from16 v25, v4

    move-object v1, v0

    .line 37
    new-instance v0, Lcom/google/gson/JsonIOException;

    const-string v2, "Failed making field \'"

    .line 38
    invoke-static {v2}, Lay$$ExternalSyntheticOutline1;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 39
    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual/range {v25 .. v25}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' accessible; either change its visibility or write a custom TypeAdapter for its declaring type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    move-object/from16 p2, v8

    move-object/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v21, v14

    move-object v13, v9

    move-object v14, v10

    .line 41
    iget-object v0, v13, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 42
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    move-object/from16 v2, p2

    invoke-static {v0, v2, v1}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 43
    new-instance v9, Lcom/google/gson/reflect/TypeToken;

    invoke-direct {v9, v0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 44
    iget-object v8, v9, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v14, v21

    move-object/from16 v13, v27

    goto/16 :goto_0

    :goto_b
    move-object/from16 v1, v21

    move-object/from16 v0, v27

    .line 45
    invoke-direct {v1, v0, v15}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v1
.end method

.method public final excludeField(Ljava/lang/reflect/Field;Z)Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 4
    invoke-virtual {p0, v0, p2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    if-nez v0, :cond_8

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, 0x88

    if-eqz v0, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_5

    .line 8
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 9
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 10
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/gson/ExclusionStrategy;

    .line 12
    invoke-interface {p1}, Lcom/google/gson/ExclusionStrategy;->shouldSkipField()Z

    move-result p1

    if-eqz p1, :cond_6

    :goto_3
    move p0, v3

    goto :goto_4

    :cond_7
    move p0, v2

    :goto_4
    if-nez p0, :cond_8

    move v2, v3

    :cond_8
    return v2
.end method
