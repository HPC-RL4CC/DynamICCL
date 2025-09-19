
default: plugin coordinator optimizer  

plugin: 
	@make -C src/plugin/

tests:
	@make -C tests/ 

coordinator: 
	@echo "No Make rule for COORDINATOR defined yet.!.!"
#	@make -C src/coordinator/

optimizer:
	@echo "No Make rule for OPTIMIZER defined  yet.!.!"
#	@make -C src/optimizer/

clean:
	@make -C src/plugin/ clean
#	@make -C src/coordinator/ clean
#	@make -C src/optimizer/ clean

.PHONY: tests

